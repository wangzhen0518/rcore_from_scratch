#![no_std]
#![no_main]

use core::arch::global_asm;

use riscv::register::sstatus;

#[macro_use]
mod console;
mod config;
mod lang_items;
mod loader;
mod sbi;
mod stack_trace;
mod sync;
pub mod syscall;
mod task;
mod timer;
pub mod trap;

global_asm!(include_str!("entry.asm"));
global_asm!(include_str!("link_app.S"));

unsafe extern "C" {
    fn sbss();
    fn ebss();
}

#[unsafe(no_mangle)]
fn clear_bss() {
    let _sbss = sbss as usize;
    let _ebss = ebss as usize;
    unsafe {
        core::slice::from_raw_parts_mut(sbss as *mut u8, ebss as usize - sbss as usize).fill(0);
    }
}

fn enable_float() {
    unsafe { sstatus::set_fs(sstatus::FS::Initial) };
}

fn set_sie() {
    unsafe { sstatus::set_sie() };
}

fn clear_sie() {
    unsafe { sstatus::clear_sie() };
}

#[unsafe(no_mangle)]
pub fn main() -> ! {
    clear_bss();
    println!("[kernel] Hello, world!");
    enable_float();
    trap::init();
    loader::load_apps();
    trap::enable_timer_interrupt();
    timer::set_next_trigger();
    set_sie();

    task::run_first_task()
}
