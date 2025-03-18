use crate::{config::CLOCK_FREQ, sbi::set_timer};

const MILLI_PRE_SEC: usize = 1_000;
const MICRO_PRE_SEC: usize = 1_000_000;

#[inline]
pub fn get_time() -> usize {
    riscv::register::time::read()
}

#[inline]
pub fn set_next_trigger() {
    set_timer(get_time() + 10 * CLOCK_FREQ / MILLI_PRE_SEC);
}

#[inline]
pub fn get_time_ms() -> usize {
    get_time() / (CLOCK_FREQ / MILLI_PRE_SEC)
}

#[inline]
pub fn get_time_us() -> usize {
    get_time() / (CLOCK_FREQ / MICRO_PRE_SEC)
}
