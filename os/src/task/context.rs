use crate::{config::MAX_SYSCALL_NUM, syscall::process::SyscallInfo, trap::__restore};

#[repr(C)]
#[derive(Copy, Clone, PartialEq, Default)]
pub enum TaskStatus {
    #[default]
    UnInit,
    Ready,
    Running,
    Exited,
}

#[repr(C)]
#[derive(Clone, Copy, Default)]
pub struct TaskContext {
    ra: usize,
    sp: usize,
    s: [usize; 12],
    fs: [f64; 12],
}

#[derive(Clone, Copy)]
pub struct TaskControlBlock {
    pub task_status: TaskStatus,
    pub task_cx: TaskContext,
    pub user_time: usize,
    pub kernel_time: usize,
    pub syscall_cnt: [usize; MAX_SYSCALL_NUM],
}

#[repr(C)]
#[derive(Clone, Copy)]
pub struct TaskInfo {
    pub id: usize,
    pub status: TaskStatus,
    pub time: usize,
    pub call: [SyscallInfo; MAX_SYSCALL_NUM],
}

impl TaskContext {
    pub fn zero_init() -> TaskContext {
        TaskContext::default()
    }

    pub fn goto_restore(kernel_stack_ptr: usize) -> TaskContext {
        TaskContext {
            ra: __restore as usize,
            sp: kernel_stack_ptr,
            s: [0; 12],
            fs: [0_f64; 12],
        }
    }
}

impl Default for TaskControlBlock {
    fn default() -> Self {
        TaskControlBlock {
            task_status: TaskStatus::default(),
            task_cx: TaskContext::default(),
            user_time: 0,
            kernel_time: 0,
            syscall_cnt: [0; MAX_SYSCALL_NUM],
        }
    }
}

impl Default for TaskInfo {
    fn default() -> Self {
        TaskInfo {
            id: 0,
            status: TaskStatus::default(),
            time: 0,
            call: [SyscallInfo::default(); MAX_SYSCALL_NUM],
        }
    }
}
