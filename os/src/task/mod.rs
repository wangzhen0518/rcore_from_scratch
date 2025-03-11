use lazy_static::lazy_static;

use crate::{
    config::MAX_APP_NUM,
    loader::{get_app_num, init_app_cx},
    sbi::shutdown,
    sync::UpSafeCell,
};

mod context;
mod switch;

use context::{TaskContext, TaskControlBlock, TaskStatus};
use switch::__switch;

lazy_static! {
    pub static ref TASK_MANAGER: TaskManager = {
        let num_app = get_app_num();
        let mut tasks = [TaskControlBlock {
            task_cx: TaskContext::zero_init(),
            task_status: TaskStatus::UnInit,
        }; MAX_APP_NUM];

        for (i, item) in tasks.iter_mut().enumerate().take(num_app) {
            item.task_cx = TaskContext::goto_restore(init_app_cx(i));
            item.task_status = TaskStatus::Ready;
        }

        TaskManager {
            num_app,
            inner: UpSafeCell::new(TaskManagerInner {
                tasks,
                current_task: 0,
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
}

impl TaskManager {
    fn mark_current_suspended(&self) {
        let mut inner = self.inner.exclusive_access();
        let current = inner.current_task;
        inner.tasks[current].task_status = TaskStatus::Ready;
    }

    fn mark_current_exited(&self) {
        let mut inner = self.inner.exclusive_access();
        let current = inner.current_task;
        inner.tasks[current].task_status = TaskStatus::Exited;
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
            println!("[kernel] Application start");
            let mut inner = self.inner.exclusive_access();
            let current = inner.current_task;
            inner.tasks[next].task_status = TaskStatus::Running;
            inner.current_task = next;
            let current_task_cx_ptr = &mut inner.tasks[current].task_cx as *mut TaskContext;
            let next_task_cx_ptr = &inner.tasks[next].task_cx as *const TaskContext;
            drop(inner);

            unsafe { __switch(current_task_cx_ptr, next_task_cx_ptr) }
        } else {
            println!("All applications completed!");
            shutdown(false)
        }
    }

    fn run_first_task(&self) -> ! {
        let mut inner = self.inner.exclusive_access();
        let task0 = &mut inner.tasks[0];
        task0.task_status = TaskStatus::Running;
        let next_task_cx_ptr = &task0.task_cx as *const TaskContext;
        drop(inner);

        let mut _unused = TaskContext::zero_init();
        unsafe { __switch(&mut _unused as *mut TaskContext, next_task_cx_ptr) };
        unreachable!("unreachable in run_first_task")
    }
}

pub fn run_first_task() -> ! {
    TASK_MANAGER.run_first_task()
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
