use std::{fs, thread, time};

fn main() {
    thread::sleep(time::Duration::from_secs(5));

    let s = "Hello, world!";
    println!("{}", s);

    fs::write("hello.txt", s).unwrap_or_else(|e| println!("write file failed: {:?}", e));
}
