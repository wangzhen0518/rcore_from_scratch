use buddy_system_allocator::LockedHeap;

use crate::{config::KERNEL_HEAP_SIZE, ebss, sbss};

#[global_allocator]
static HEAP_ALLOCATOR: LockedHeap<21> = LockedHeap::empty();
static mut HEAP_SPACE: [u8; KERNEL_HEAP_SIZE] = [0; KERNEL_HEAP_SIZE];

pub fn init_heap() {
    unsafe {
        #[allow(static_mut_refs)]
        HEAP_ALLOCATOR
            .lock()
            .init(HEAP_SPACE.as_ptr() as usize, KERNEL_HEAP_SIZE);
    }
}

// #[alloc_error_handler]
// pub fn handle_alloc_error(layout: core::alloc::Layout) -> ! {
//     panic!("[kernel] Heap allocation error, layout = {:?}", layout)
// }

#[allow(unused)]
pub fn heap_test() {
    use alloc::boxed::Box;
    use alloc::vec::Vec;
    let bss_range = sbss as usize..ebss as usize;
    let a = Box::new(5);
    assert_eq!(*a, 5);
    assert!(bss_range.contains(&(a.as_ref() as *const _ as usize)));
    drop(a);
    let mut v = Vec::new();
    for i in 0..100 {
        v.push(i);
    }
    #[allow(clippy::needless_range_loop)]
    for i in 0..100 {
        assert_eq!(v[i], i);
    }
    assert!(bss_range.contains(&(v.as_ptr() as usize)));
    drop(v);
    println!("[kernel] heap_test passed!");
}
