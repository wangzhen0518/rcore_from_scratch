use core::arch::asm;

#[repr(C)]
pub struct TrapContext {
    pub registers: [usize; 32],
    pub fregisters: [f64; 32],
    pub sstatus: usize,
    pub sepc: usize,
}

fn read_sstatus() -> usize {
    let _sstatus: usize;
    unsafe { asm!("csrr {0}, sstatus", out(reg) _sstatus) };
    _sstatus
}

impl TrapContext {
    pub fn set_sp(&mut self, sp: usize) {
        self.registers[2] = sp;
    }

    pub fn app_init_context(entry: usize, sp: usize) -> TrapContext {
        let mut _sstatus = read_sstatus() & !(1 << 8);

        let mut cx = TrapContext {
            registers: [0; 32],
            fregisters: [0_f64; 32],
            sstatus: _sstatus,
            sepc: entry,
        };
        cx.set_sp(sp);

        cx
    }

    #[inline(always)]
    pub fn get_syscall_id(&self) -> usize {
        self.registers[17]
    }

    #[inline(always)]
    pub fn get_syscall_param(&self) -> [usize; 3] {
        [self.registers[10], self.registers[11], self.registers[12]]
    }

    #[inline(always)]
    pub fn set_return_value(&mut self, value: usize) {
        self.registers[10] = value;
    }
}
