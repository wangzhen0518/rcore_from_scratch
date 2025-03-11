use crate::task::{exit_current_and_run_next, suspend_current_and_run_next};

pub fn sys_exit(exit_code: i32) -> ! {
    println!("[kernel] Application exited with code {}\n", exit_code);
    exit_current_and_run_next()
}

// pub fn sys_get_taskinfo(){

// }

/// 功能：应用主动教出 CPU 所有权，并切换到其他应用。
/// 返回值：0
/// syscall id: 124
pub fn sys_yield() -> isize {
    suspend_current_and_run_next();
    0
}
