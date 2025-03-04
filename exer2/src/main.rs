use std::fs::File;
use std::io::Write;
use std::sync::{Arc, Mutex};
use std::thread;
use tokio::fs;

#[tokio::main]
async fn main() {
    let counter = Arc::new(Mutex::new(0));
    let mut handles = vec![];

    for _ in 0..4 {
        let counter = counter.clone();
        let handle = thread::spawn(move || {
            for _ in 0..1000 {
                let mut num = counter.lock().unwrap();
                *num += 1;
            }
        });
        handles.push(handle);
    }

    let file_task =
        tokio::spawn(async { fs::read_to_string("input.txt").await.unwrap_or_default() });

    handles.into_iter().for_each(|h| h.join().unwrap());

    let file_content = file_task.await.unwrap();

    let final_count = *counter.lock().unwrap();
    let mut output = File::create("output.txt").unwrap();
    writeln!(output, "Final counter: {}", final_count).unwrap();
    writeln!(output, "File content: {}", file_content).unwrap();

    println!("Hello, world!");
}
