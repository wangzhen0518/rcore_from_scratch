use crate::trap::__restore;

#[derive(Clone, Copy)]
#[repr(C)]
pub struct TaskContext {
    ra: usize,
    sp: usize,
    s: [usize; 12],
}

#[derive(Copy, Clone, PartialEq)]
pub enum TaskStatus {
    UnInit,
    Ready,
    Running,
    Exited,
}

#[derive(Clone, Copy)]
pub struct TaskControlBlock {
    pub task_status: TaskStatus,
    pub task_cx: TaskContext,
}

impl TaskContext {
    pub fn zero_init() -> TaskContext {
        TaskContext {
            ra: 0,
            sp: 0,
            s: [0; 12],
        }
    }

    pub fn goto_restore(kernel_stack_ptr: usize) -> TaskContext {
        TaskContext {
            ra: __restore as usize,
            sp: kernel_stack_ptr,
            s: [0; 12],
        }
    }
}
