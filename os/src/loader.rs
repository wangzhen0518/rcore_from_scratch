use core::arch::asm;

use crate::config::*;
use crate::trap::TrapContext;

pub static KERNEL_STACK: [KernelStack; MAX_APP_NUM] =
    [KernelStack([0; KERNEL_STACK_SIZE]); MAX_APP_NUM];
pub static USER_STACK: [UserStack; MAX_APP_NUM] = [UserStack([0; USER_STACK_SIZE]); MAX_APP_NUM];

unsafe extern "C" {
    fn __num_app();
}

#[repr(align(4096))]
#[derive(Clone, Copy)]
pub struct KernelStack([u8; KERNEL_STACK_SIZE]);

#[repr(align(4096))]
#[derive(Clone, Copy)]
pub struct UserStack([u8; USER_STACK_SIZE]);

impl KernelStack {
    #[inline(always)]
    pub fn get_sp(&self) -> usize {
        self.0.as_ptr() as usize + self.0.len()
    }

    fn push_context(&self, cx: TrapContext) -> usize {
        let cx_ptr = (self.get_sp() - size_of::<TrapContext>()) as *mut TrapContext;
        unsafe { *cx_ptr = cx };
        cx_ptr as usize
    }
}

impl UserStack {
    #[inline(always)]
    pub fn get_sp(&self) -> usize {
        self.0.as_ptr() as usize + self.0.len()
    }
}

#[inline(always)]
pub fn get_base_addr_i(app_id: usize) -> usize {
    APP_BASE_ADDRESS + APP_SIZE_LIMIT * app_id
}

#[inline(always)]
pub fn get_app_num() -> usize {
    unsafe { (__num_app as *const usize).read_volatile() }
}

pub fn load_apps() {
    let num_app_ptr = __num_app as *const usize;
    let num_app = get_app_num();
    assert!(
        num_app <= MAX_APP_NUM,
        "num_app is greater than MAX_APP_NUM={}",
        MAX_APP_NUM
    );
    let app_start = unsafe { core::slice::from_raw_parts(num_app_ptr.add(1), num_app + 1) };

    for app_id in 0..num_app {
        let app_src = unsafe {
            core::slice::from_raw_parts(
                app_start[app_id] as *const u8,
                app_start[app_id + 1] - app_start[app_id],
            )
        };
        unsafe {
            core::slice::from_raw_parts_mut(get_base_addr_i(app_id) as *mut u8, app_src.len())
                .copy_from_slice(app_src);
        }
    }

    unsafe { asm!("fence.i") };

    println!("[kernel] num_app = {}", num_app);
    for i in 0..num_app {
        println!(
            "[kernel] app_{} [{:#x}, {:#x}]",
            i,
            app_start[i],
            app_start[i + 1]
        );
    }
}

pub fn init_app_cx(app_id: usize) -> usize {
    KERNEL_STACK[app_id].push_context(TrapContext::app_init_context(
        get_base_addr_i(app_id),
        USER_STACK[app_id].get_sp(),
    ))
}
