#![no_std]
#![no_main]

use user_lib::{get_task_info, task::TaskInfo};

#[macro_use]
extern crate user_lib;

#[unsafe(no_mangle)]
fn main() -> i32 {
    let mut info = TaskInfo::default();
    get_task_info(0, &mut info);
    println!("{:?}", info);
    0
}
