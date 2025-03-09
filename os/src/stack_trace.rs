use core::{
    arch::asm,
    fmt::{Debug, Display},
};

#[repr(C)]
#[derive(Debug)]
struct FuncCallFrame {
    fp: usize,
    ra: usize,
}

impl Display for FuncCallFrame {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        write!(f, "0x{:016x}, fp : 0x{:016x}", self.ra, self.fp)
    }
}

#[inline(always)]
fn get_frame<'a>(addr: usize) -> &'a FuncCallFrame {
    unsafe { &*(addr as *const FuncCallFrame) }
}

#[inline(never)]
pub fn print_stack_trace() {
    let mut fp: usize;
    unsafe { asm!("mv {0}, s0", out(reg) fp) };
    println!("== Begin stack trace ==");
    while fp != 0x0 {
        let frame = get_frame(fp - size_of::<FuncCallFrame>());
        println!("{}", frame);
        fp = frame.fp;
    }
    println!("== End stack trace ==");
}
