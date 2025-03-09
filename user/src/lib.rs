#![no_std]
#![feature(linkage)]

#[macro_use] //TODO macro use 的作用是什么
pub mod console;
mod lang_items;
mod syscall;

#[unsafe(no_mangle)]
#[unsafe(link_section = ".text.entry")]
pub fn _start() -> ! {
    clear_bss();
    exit(main());
    unreachable!("unreachable after sys_exit!");
}

#[linkage = "weak"] //TODO 这是什么意思，为什么会使用每个 bin 文件自己的 main
#[unsafe(no_mangle)]
fn main() -> i32 {
    panic!("Cannot find main!");
}

fn clear_bss() {
    unsafe extern "C" {
        fn sbss();
        fn ebss();
    }
    unsafe {
        core::slice::from_raw_parts_mut(sbss as *mut u8, ebss as usize - sbss as usize).fill(0);
    }
}

pub fn write(fd: usize, buf: &[u8]) -> isize {
    syscall::sys_write(fd, buf)
}

pub fn exit(exit_code: i32) -> isize {
    syscall::sys_exit(exit_code)
}
