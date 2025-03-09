use core::panic::PanicInfo;

use crate::{sbi, stack_trace::print_stack_trace};

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    println!("os::lang_items::panic_handler");
    if let Some(location) = info.location() {
        println!(
            "Panicked at {}:{} {}",
            location.file(),
            location.line(),
            info.message()
        );
    } else {
        println!("Panicked: {}", info.message());
    }
    print_stack_trace();

    sbi::shutdown(true);
}
