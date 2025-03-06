#![no_std]
#![no_main]

use core::arch::global_asm;

#[macro_use]
mod console;
mod lang_items;
mod sbi;

global_asm!(include_str!("entry.asm"));

#[unsafe(no_mangle)]
pub fn main() -> ! {
    clear_bss();
    println!("hello world!");
    sbi::shutdown(false);
}

#[unsafe(no_mangle)]
fn clear_bss() {
    unsafe extern "C" {
        static sbss: usize;
        static ebss: usize;
    }

    unsafe {
        (sbss..ebss).for_each(|a| *(a as *mut u8) = 0);
    }
}
