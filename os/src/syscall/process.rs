use crate::{
    task::{
        context::TaskInfo, exit_current_and_run_next, get_current_task_id, get_task_info,
        suspend_current_and_run_next,
    },
    timer::get_time_ms,
};

#[repr(C)]
#[derive(Clone, Copy, Default)]
pub struct SyscallInfo {
    pub id: usize,
    pub times: usize,
}

pub fn sys_exit(exit_code: i32) -> ! {
    println!(
        "[kernel] Application {} exited with code {}\n",
        get_current_task_id(),
        exit_code
    );
    exit_current_and_run_next()
}

/// 功能：应用主动教出 CPU 所有权，并切换到其他应用。
/// 返回值：0
/// syscall id: 124
pub fn sys_yield() -> isize {
    suspend_current_and_run_next();
    0
}

pub fn sys_get_time() -> isize {
    get_time_ms() as isize
}

#[allow(clippy::not_unsafe_ptr_arg_deref)]
pub fn sys_task_info(id: usize, ts: *mut TaskInfo) -> isize {
    let ts = unsafe { ts.as_mut() }.unwrap_or_else(|| exit_current_and_run_next());
    get_task_info(id, ts).map_or(-1, |_| 0)
}
