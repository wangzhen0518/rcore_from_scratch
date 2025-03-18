use core::arch::asm;

use crate::task::TaskInfo;

const SYSCALL_WRITE: usize = 64;
const SYSCALL_EXIT: usize = 93;
const SYSCALL_YIELD: usize = 124;
const SYSCALL_GET_TIME: usize = 169;
const SYSCALL_TASK_INFO: usize = 199;

#[repr(C)]
#[derive(Clone, Copy, Default, Debug)]
pub struct SyscallInfo {
    pub id: usize,
    pub times: usize,
}

#[unsafe(no_mangle)]
fn syscall(id: usize, args: [usize; 3]) -> isize {
    let mut ret: isize;
    unsafe {
        asm!(
            "ecall",
            inlateout("x10") args[0] => ret,
            in("x11") args[1],
            in("x12") args[2],
            in("x17") id
        );
    }
    ret
}

pub fn sys_write(fd: usize, buffer: &[u8]) -> isize {
    syscall(SYSCALL_WRITE, [fd, buffer.as_ptr() as usize, buffer.len()])
}

pub fn sys_exit(xstate: i32) -> isize {
    syscall(SYSCALL_EXIT, [xstate as usize, 0, 0])
}

pub fn sys_yield() -> isize {
    syscall(SYSCALL_YIELD, [0; 3])
}

pub fn sys_get_time() -> isize {
    syscall(SYSCALL_GET_TIME, [0; 3])
}

pub fn sys_task_info(task_id: usize, task_info: &mut TaskInfo) -> isize {
    syscall(
        SYSCALL_TASK_INFO,
        [task_id, task_info as *mut TaskInfo as usize, 0],
    )
}
