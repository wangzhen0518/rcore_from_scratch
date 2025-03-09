use riscv::register::sstatus::{self, Sstatus};

#[repr(C)]
pub struct TrapContext {
    pub registers: [usize; 32],
    pub sstatus: Sstatus,
    pub sepc: usize,
}

impl TrapContext {
    pub fn set_sp(&mut self, sp: usize) {
        self.registers[2] = sp;
    }

    pub fn app_init_context(entry: usize, sp: usize) -> TrapContext {
        unsafe { sstatus::set_spp(sstatus::SPP::User) };
        let mut _sstatus = sstatus::read();

        let mut cx = TrapContext {
            registers: [0; 32],
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
