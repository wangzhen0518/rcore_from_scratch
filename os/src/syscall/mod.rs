use crate::task::{add_syscall_cnt, context::TaskInfo};

mod fs;
pub mod process;

const SYSCALL_WRITE: usize = 64;
const SYSCALL_EXIT: usize = 93;
const SYSCALL_YIELD: usize = 124;
const SYSCALL_GET_TIME: usize = 169;
const SYSCALL_TASK_INFO: usize = 199;

pub fn syscall(id: usize, args: [usize; 3]) -> isize {
    add_syscall_cnt(id);
    match id {
        SYSCALL_WRITE => fs::sys_write(args[0], args[1] as *const u8, args[2]),
        SYSCALL_EXIT => process::sys_exit(args[0] as i32),
        SYSCALL_YIELD => process::sys_yield(),
        SYSCALL_GET_TIME => process::sys_get_time(),
        SYSCALL_TASK_INFO => process::sys_task_info(args[0], args[1] as *mut TaskInfo),
        _ => panic!("Unsupported syscall_id: {}", id),
    }
}
