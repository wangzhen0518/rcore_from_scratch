use itertools::izip;
use lazy_static::lazy_static;

use crate::{
    config::MAX_APP_NUM,
    loader::{get_app_num, init_app_cx},
    sbi::shutdown,
    sync::UpSafeCell,
    timer::get_time_us,
};

pub mod context;
mod switch;

use context::{TaskContext, TaskControlBlock, TaskInfo, TaskStatus};

static mut SWITCH_TIME_START: usize = 0;
static mut SWITCH_TIME_COUNT: usize = 0;

lazy_static! {
    pub static ref TASK_MANAGER: TaskManager = {
        let num_app = get_app_num();
        let mut tasks = [TaskControlBlock::default(); MAX_APP_NUM];

        for (i, item) in tasks.iter_mut().enumerate().take(num_app) {
            item.task_cx = TaskContext::goto_restore(init_app_cx(i));
            item.task_status = TaskStatus::Ready;
        }

        TaskManager {
            num_app,
            inner: UpSafeCell::new(TaskManagerInner {
                tasks,
                current_task: 0,
                stop_watch: 0,
            }),
        }
    };
}

pub struct TaskManager {
    num_app: usize,
    inner: UpSafeCell<TaskManagerInner>,
}

struct TaskManagerInner {
    tasks: [TaskControlBlock; MAX_APP_NUM],
    current_task: usize,
    stop_watch: usize,
}

impl TaskManager {
    fn get_current_task_id(&self) -> usize {
        let inner = self.inner.exclusive_access();
        inner.current_task
    }

    fn get_task_info(&self, id: usize, ts: &mut TaskInfo) -> Result<(), ()> {
        if id >= self.num_app {
            return Err(());
        }

        let inner = self.inner.exclusive_access();
        let _task = &inner.tasks[id];
        ts.id = id;
        ts.status = _task.task_status;
        ts.time = _task.user_time + _task.kernel_time;

        for (syscall_id, (info, cnt)) in izip!(&mut ts.call, _task.syscall_cnt).enumerate() {
            info.id = syscall_id;
            info.times = cnt;
        }

        Ok(())
    }

    fn mark_current_suspended(&self) {
        let mut inner = self.inner.exclusive_access();
        let current = inner.current_task;
        inner.tasks[current].kernel_time += inner.refresh_stop_watch();
        inner.tasks[current].task_status = TaskStatus::Ready;
        // println!("task {} suspened", current);
    }

    fn mark_current_exited(&self) {
        let mut inner = self.inner.exclusive_access();
        let current = inner.current_task;
        inner.tasks[current].kernel_time += inner.refresh_stop_watch();
        inner.tasks[current].task_status = TaskStatus::Exited;
        // println!("task {} exited", current);
    }

    fn user_time_start(&self) {
        let mut inner = self.inner.exclusive_access();
        let current = inner.current_task;
        inner.tasks[current].kernel_time += inner.refresh_stop_watch();
    }

    fn user_time_end(&self) {
        let mut inner = self.inner.exclusive_access();
        let current = inner.current_task;
        inner.tasks[current].user_time += inner.refresh_stop_watch();
    }

    fn add_syscall_cnt(&self, syscall_id: usize) {
        let mut inner = self.inner.exclusive_access();
        let current = inner.current_task;
        inner.tasks[current].syscall_cnt[syscall_id] += 1;
    }

    fn find_next_task(&self) -> Option<usize> {
        let inner = self.inner.exclusive_access();
        let current = inner.current_task;
        (current + 1..current + self.num_app + 1)
            .map(|id| id % self.num_app)
            .find(|id| inner.tasks[*id].task_status == TaskStatus::Ready)
    }

    fn run_next_app(&self) {
        if let Some(next) = self.find_next_task() {
            // println!("[kernel] Application start");
            let mut inner = self.inner.exclusive_access();
            let current = inner.current_task;
            inner.tasks[next].task_status = TaskStatus::Running;
            inner.current_task = next;
            let current_task_cx_ptr = &mut inner.tasks[current].task_cx as *mut TaskContext;
            let next_task_cx_ptr = &inner.tasks[next].task_cx as *const TaskContext;
            drop(inner);

            // println!(
            //     "0x{:016x} -> 0x{:016x}",
            //     current_task_cx_ptr as usize, next_task_cx_ptr as usize
            // );
            // println!("task {} start", current);
            unsafe { __switch(current_task_cx_ptr, next_task_cx_ptr) }
        } else {
            println!("All applications completed!");
            println!("task switch time: {}us", get_switch_time_count());
            shutdown(false)
        }
    }

    fn run_first_task(&self) -> ! {
        let mut inner = self.inner.exclusive_access();
        let task0 = &mut inner.tasks[0];
        task0.task_status = TaskStatus::Running;
        let next_task_cx_ptr = &task0.task_cx as *const TaskContext;
        inner.refresh_stop_watch();
        drop(inner);

        let mut _unused = TaskContext::zero_init();
        unsafe { __switch(&mut _unused as *mut TaskContext, next_task_cx_ptr) };
        unreachable!("unreachable in run_first_task")
    }
}

impl TaskManagerInner {
    fn refresh_stop_watch(&mut self) -> usize {
        let start_time = self.stop_watch;
        self.stop_watch = get_time_us();
        self.stop_watch - start_time
    }
}

unsafe fn __switch(current_task_cx_ptr: *mut TaskContext, next_task_cx_ptr: *const TaskContext) {
    unsafe {
        SWITCH_TIME_START = get_time_us();
        switch::__switch(current_task_cx_ptr, next_task_cx_ptr);
        SWITCH_TIME_COUNT += get_time_us() - SWITCH_TIME_START;
    }
}

pub fn get_switch_time_count() -> usize {
    unsafe { SWITCH_TIME_COUNT }
}

pub fn get_current_task_id() -> usize {
    TASK_MANAGER.get_current_task_id()
}

pub fn get_task_info(id: usize, ts: &mut TaskInfo) -> Result<(), ()> {
    TASK_MANAGER.get_task_info(id, ts)
}

pub fn suspend_current_and_run_next() {
    TASK_MANAGER.mark_current_suspended();
    TASK_MANAGER.run_next_app()
}

pub fn exit_current_and_run_next() -> ! {
    TASK_MANAGER.mark_current_exited();
    TASK_MANAGER.run_next_app();
    unreachable!("unreachable in exit_current_and_run_next")
}

pub fn add_syscall_cnt(syscall_id: usize) {
    TASK_MANAGER.add_syscall_cnt(syscall_id);
}

pub fn user_time_start() {
    TASK_MANAGER.user_time_start();
}

pub fn user_time_end() {
    TASK_MANAGER.user_time_end();
}

pub fn run_first_task() -> ! {
    TASK_MANAGER.run_first_task()
}
