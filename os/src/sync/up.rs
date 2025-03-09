use core::cell::{RefCell, RefMut};

pub struct UpSafeCell<T>(RefCell<T>);

unsafe impl<T> Sync for UpSafeCell<T> {}

impl<T> UpSafeCell<T> {
    // TODO 为什么需要是 unsafe
    pub fn new(value: T) -> UpSafeCell<T> {
        UpSafeCell(RefCell::new(value))
    }

    pub fn exclusive_access(&self) -> RefMut<'_, T> {
        self.0.borrow_mut()
    }
}
