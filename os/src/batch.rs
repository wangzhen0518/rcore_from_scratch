#![allow(unused)]

use crate::loader;
use crate::sbi::shutdown;
use crate::sync::UpSafeCell;
use crate::trap::TrapContext;
use core::arch::asm;
use lazy_static::lazy_static;

struct AppManager {
    num_app: usize,
    current_app: usize,
}

impl AppManager {
    pub fn get_current_app(&self) -> usize {
        self.current_app
    }

    pub fn move_to_next_app(&mut self) {
        if self.current_app >= self.num_app {
            println!("All applications completed!");
            shutdown(false);
        }
        self.current_app += 1;
    }
}

lazy_static! {
    static ref APP_MANAGER: UpSafeCell<AppManager> = unsafe {
        UpSafeCell::new({
            unsafe extern "C" {
                fn __num_app();
            }

            let x = __num_app as usize;
            let num_app_ptr = __num_app as *const usize;
            let num_app = num_app_ptr.read_volatile();

            AppManager {
                num_app,
                current_app: 0,
            }
        })
    };
}

#[inline(always)]
fn switch_to_user(entry: usize, kernel_stack_ptr: usize, user_stack_ptr: usize) -> ! {
    unsafe {
        asm!(
            // 设置栈指针 (sp/x2)
            "mv sp, {0}",
            // 设置 sscratch CSR
            "csrw sscratch, {1}",
            // 设置 sepc CSR
            "csrw sepc, {2}",
            // 清除 sstatus 的 SPP 位（设置为用户模式）
            "csrc sstatus, {3}",
            "sret",
            // 输入操作数
            in(reg) user_stack_ptr,
            in(reg) kernel_stack_ptr,
            in(reg) entry,
            in(reg) 1_usize << 8,
            // 汇编选项
            options(nomem, noreturn)
        )
    }
}

#[inline(always)]
fn switch_to_user_by_restore(cx_addr: usize) -> ! {
    unsafe extern "C" {
        fn __restore(cx_addr: usize) -> !;
    }

    unsafe { __restore(cx_addr) }
}

#[unsafe(no_mangle)]
pub fn run_next_app() -> ! {
    println!("[kernel] Application start");
    let mut app_manager = APP_MANAGER.exclusive_access();
    let current_app = app_manager.get_current_app();
    app_manager.move_to_next_app();
    drop(app_manager);

    switch_to_user(
        loader::get_base_addr_i(current_app),
        loader::KERNEL_STACK[current_app].get_sp(),
        loader::USER_STACK[current_app].get_sp(),
    )

    // let kernel_stack_ptr = loader::init_app_cx(current_app);
    // switch_to_user_by_restore(kernel_stack_ptr)
}
