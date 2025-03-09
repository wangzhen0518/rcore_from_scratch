mod context;

use core::arch::global_asm;

use riscv::register::{scause, stval, stvec};

use crate::{batch::run_next_app, syscall::syscall};
pub use context::TrapContext;

global_asm!(include_str!("trap.S"));

pub fn init() {
    unsafe extern "C" {
        fn __alltraps();
    }

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

#[unsafe(no_mangle)]
pub fn trap_handler(cx: &mut TrapContext) -> &mut TrapContext {
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
                "[kernel] PageFault in application, bad addr: 0x{:016x}, bad instruction: 0x{:08x}, bad instruction addr: 0x{:016x}, kernel killed it.\n",
                _stval, bad_instr, cx.sepc
            );
            run_next_app();
        }
        scause::Trap::Exception(scause::Exception::IllegalInstruction) => {
            let bad_instr = read_instruction(cx.sepc);
            println!(
                "[kernel] IllegalInstruction in application, stval: 0x{:016x}, bad instruction: 0x{:08x}, bad instruction addr: 0x{:016x}, kernel killed it.\n",
                _stval, bad_instr, cx.sepc
            );
            run_next_app();
        }
        _ => panic!(
            "[kernel] Unsupported trap {:?}, stval = 0x{:016x}!\n",
            _scause.cause(),
            _stval
        ),
    }

    cx
}
