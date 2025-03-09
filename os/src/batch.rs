#![allow(unused)]

use crate::sbi::shutdown;
use crate::sync::UpSafeCell;
use crate::trap::TrapContext;
use core::arch::asm;
use lazy_static::lazy_static;

const KERNEL_STACK_SIZE: usize = 4096 * 2;
const USER_STACK_SIZE: usize = 4096 * 2;

const MAX_APP_NUM: usize = 10;
const APP_BASE_ADDRESS: usize = 0x80400000;
// const APP_BASE_ADDRESS: *mut u8 = 0x80400000 as *mut u8; //TODO为什么这样定义会出错
const APP_SIZE_LIMIT: usize = 0x20000;

#[repr(align(4096))]
struct KernelStack([u8; KERNEL_STACK_SIZE]);

#[repr(align(4096))]
struct UserStack([u8; USER_STACK_SIZE]);

trait Stack {
    fn get_sp(&self) -> usize;

    #[unsafe(no_mangle)]
    fn push_context(&self, cx: TrapContext) -> &'static mut TrapContext {
        let cx_ptr = (self.get_sp() - size_of::<TrapContext>()) as *mut TrapContext;
        unsafe { *cx_ptr = cx };

        unsafe { cx_ptr.as_mut().unwrap() }
    }
}

impl Stack for KernelStack {
    fn get_sp(&self) -> usize {
        self.0.as_ptr() as usize + self.0.len()
    }
}

impl Stack for UserStack {
    fn get_sp(&self) -> usize {
        self.0.as_ptr() as usize + self.0.len()
    }
}

struct AppManager {
    num_app: usize,
    current_app: usize,
    app_start: [usize; MAX_APP_NUM + 1],
}

impl AppManager {
    pub fn print_app_info(&self) {
        println!("[kernel] num_app = {}", self.num_app);
        for i in 0..self.num_app {
            println!(
                "[kernel] app_{} [{:#x}, {:#x}]",
                i,
                self.app_start[i],
                self.app_start[i + 1]
            );
        }
    }

    pub fn get_current_app(&self) -> usize {
        self.current_app
    }

    pub fn move_to_next_app(&mut self) {
        self.current_app += 1;
    }

    pub fn load_app(&self, app_id: usize) {
        if app_id >= self.num_app {
            println!("All applications completed!");
            shutdown(false);
        }
        println!("[kernel] Loading app_{}", app_id);

        unsafe {
            // core::slice::from_raw_parts_mut(APP_BASE_ADDRESS, APP_SIZE_LIMIT).fill(0);
            // 1. 为什么需要拷贝，原本 app 不就在内存中吗
            // 2. 为什么需要约定从 APP_BASE_ADDRESS 开始，知道 app_start 不能直接跳转过去吗
            // 3. 为什么 app 需要指定 BASE_ADDRESS
            // 解答：https://github.com/rcore-os/rCore-Tutorial-Book-v3/issues/44#issuecomment-882377241
            // TL;DR 二进制文件中存在绝对地址，如果放置位置不合法，读取绝对地址的数据时将发生异常
            // TODO: 为什么二进制文件要用绝对地址
            let app_src = core::slice::from_raw_parts(
                self.app_start[app_id] as *const u8,
                self.app_start[app_id + 1] - self.app_start[app_id],
            );
            let app_dst =
                core::slice::from_raw_parts_mut(APP_BASE_ADDRESS as *mut u8, app_src.len());
            app_dst.copy_from_slice(app_src);

            asm!("fence.i");
        }
    }
}

static KERNEL_STACK: KernelStack = KernelStack([0; KERNEL_STACK_SIZE]);
static USER_STACK: UserStack = UserStack([0; USER_STACK_SIZE]);

lazy_static! {
    static ref APP_MANAGER: UpSafeCell<AppManager> = unsafe {
        UpSafeCell::new({
            unsafe extern "C" {
                fn __num_app();
            }

            let x = __num_app as usize;
            let num_app_ptr = __num_app as *const usize;
            let num_app = num_app_ptr.read_volatile();
            let mut app_start: [usize; MAX_APP_NUM + 1] = [0; MAX_APP_NUM + 1];
            let app_start_raw: &[usize] =
                core::slice::from_raw_parts(num_app_ptr.add(1), num_app + 1);
            app_start[..=num_app].copy_from_slice(app_start_raw);

            AppManager {
                num_app,
                current_app: 0,
                app_start,
            }
        })
    };
}

pub fn print_app_info() {
    APP_MANAGER.exclusive_access().print_app_info();
}

pub fn init() {
    print_app_info();
}

#[inline(always)]
fn switch_to_user() -> ! {
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
            in(reg) USER_STACK.get_sp(),
            in(reg) KERNEL_STACK.get_sp(),
            in(reg) 0x80400000_usize,
            in(reg) 1_usize << 8,
            // 汇编选项
            options(nomem, noreturn)
        )
    }
}

#[inline(always)]
fn switch_to_user_by_restore() -> ! {
    unsafe extern "C" {
        fn __restore(cx_addr: usize) -> !;
    }

    let x = KERNEL_STACK.push_context(TrapContext::app_init_context(
        APP_BASE_ADDRESS,
        USER_STACK.get_sp(),
    )) as *const _ as usize;

    unsafe { __restore(x) }
}

#[unsafe(no_mangle)]
pub fn run_next_app() -> ! {
    let mut app_manager = APP_MANAGER.exclusive_access();
    let current_app = app_manager.get_current_app();
    app_manager.load_app(current_app);
    app_manager.move_to_next_app();
    drop(app_manager);

    // switch_to_user()
    switch_to_user_by_restore()
}
