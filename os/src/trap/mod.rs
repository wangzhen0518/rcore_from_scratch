mod context;

use core::arch::global_asm;

use riscv::register::{scause, sie, sstatus, stval, stvec};

use crate::{
    sbi::shutdown,
    syscall::syscall,
    task::{self, exit_current_and_run_next, get_current_task_id, suspend_current_and_run_next},
    timer::set_next_trigger,
};
pub use context::TrapContext;

static mut KERNEL_INTERRUPT_TRIGGERED: bool = false;

global_asm!(include_str!("trap.S"));

unsafe extern "C" {
    pub fn __alltraps();
    pub fn __restore() -> !;
}

#[inline]
pub fn init() {
    let _x = __alltraps as usize;
    unsafe { stvec::write(__alltraps as usize, stvec::TrapMode::Direct) };
}

fn read_instruction(addr: usize) -> u32 {
    let inst16 = unsafe { core::ptr::read(addr as *const u16) };
    if (inst16 & 0b11) != 0b11 {
        // 16 位指令
        inst16 as u32
    } else {
        // 32 位指令
        unsafe { core::ptr::read(addr as *const u32) }
    }
}

pub fn enable_timer_interrupt() {
    unsafe { sie::set_stimer() };
}

#[unsafe(no_mangle)]
pub fn trap_handler(cx: &mut TrapContext) -> &mut TrapContext {
    match sstatus::read().spp() {
        sstatus::SPP::Supervisor => kernel_trap_handler(cx),
        sstatus::SPP::User => user_trap_handler(cx),
    }
}

pub fn user_trap_handler(cx: &mut TrapContext) -> &mut TrapContext {
    task::user_time_end();

    let _scause = scause::read();
    let _stval = stval::read();

    match _scause.cause() {
        scause::Trap::Exception(scause::Exception::UserEnvCall) => {
            cx.sepc += 4;
            cx.set_return_value(syscall(cx.get_syscall_id(), cx.get_syscall_param()) as usize);
        }
        scause::Trap::Exception(scause::Exception::StoreFault)
        | scause::Trap::Exception(scause::Exception::StorePageFault) => {
            let bad_instr = read_instruction(cx.sepc);
            println!(
                "[kernel] PageFault in application {}, bad addr: 0x{:016x}, bad instruction: 0x{:08x}, bad instruction addr: 0x{:016x}, kernel killed it.\n",
                get_current_task_id(),
                _stval,
                bad_instr,
                cx.sepc
            );
            exit_current_and_run_next();
        }
        scause::Trap::Exception(scause::Exception::IllegalInstruction) => {
            let bad_instr = read_instruction(cx.sepc);
            println!(
                "[kernel] IllegalInstruction in application {}, stval: 0x{:016x}, bad instruction: 0x{:08x}, bad instruction addr: 0x{:016x}, kernel killed it.\n",
                get_current_task_id(),
                _stval,
                bad_instr,
                cx.sepc
            );
            exit_current_and_run_next();
        }
        scause::Trap::Interrupt(scause::Interrupt::SupervisorTimer) => {
            set_next_trigger();
            suspend_current_and_run_next();
        }
        _ => panic!(
            "[kernel] Unsupported trap {:?}, stval = 0x{:016x}!\n",
            _scause.cause(),
            _stval
        ),
    }

    task::user_time_start();
    cx
}

pub fn kernel_trap_handler(cx: &mut TrapContext) -> &mut TrapContext {
    let _scause = scause::read();
    let _stval = stval::read();

    match _scause.cause() {
        scause::Trap::Exception(scause::Exception::StoreFault)
        | scause::Trap::Exception(scause::Exception::StorePageFault) => {
            let bad_instr = read_instruction(cx.sepc);
            println!(
                "[kernel] PageFault in kernel, bad addr: 0x{:016x}, bad instruction: 0x{:08x}, bad instruction addr: 0x{:016x}, kernel killed it.\n",
                _stval, bad_instr, cx.sepc
            );
            shutdown(true);
        }
        scause::Trap::Exception(scause::Exception::IllegalInstruction) => {
            let bad_instr = read_instruction(cx.sepc);
            println!(
                "[kernel] IllegalInstruction in kernel, stval: 0x{:016x}, bad instruction: 0x{:08x}, bad instruction addr: 0x{:016x}, kernel killed it.\n",
                _stval, bad_instr, cx.sepc
            );
            shutdown(true);
        }
        scause::Trap::Interrupt(scause::Interrupt::SupervisorTimer) => {
            println!("kernel interrupt: from timer");
            mark_kernel_interrupt();
            set_next_trigger();
        }
        _ => panic!(
            "[kernel] Unsupported trap {:?}, stval = 0x{:016x}!\n",
            _scause.cause(),
            _stval
        ),
    }

    cx
}

fn mark_kernel_interrupt() {
    trigger_kernel_interrupt();
}

pub fn check_kernel_interrupt() -> bool {
    unsafe { KERNEL_INTERRUPT_TRIGGERED }
}

pub fn trigger_kernel_interrupt() {
    unsafe { KERNEL_INTERRUPT_TRIGGERED = true };
}
