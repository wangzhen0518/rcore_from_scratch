#![no_std]
#![no_main]

use core::arch::global_asm;

#[macro_use]
mod console;
pub mod batch;
mod config;
mod lang_items;
mod loader;
mod sbi;
mod stack_trace;
mod sync;
pub mod syscall;
pub mod trap;

global_asm!(include_str!("entry.asm"));
global_asm!(include_str!("link_app.S"));

#[unsafe(no_mangle)]
pub fn main() -> ! {
    clear_bss();
    println!("hello world!");
    trap::init();
    loader::load_apps();
    batch::run_next_app()

    // unreachable!()
}

#[unsafe(no_mangle)]
fn clear_bss() {
    unsafe extern "C" {
        fn sbss();
        fn ebss();
    }

    let _sbss = sbss as usize;
    let _ebss = ebss as usize;
    unsafe {
        core::slice::from_raw_parts_mut(sbss as *mut u8, ebss as usize - sbss as usize).fill(0);
    }
}
