use std::{
    fs::{self, File},
    io::{self, Write},
};

static TARGET_SRC_PATH: &str = "../user/src/bin/";
static TARGET_PATH: &str = "../user/target/riscv64gc-unknown-none-elf/debug/";

fn insert_app_data() -> io::Result<()> {
    let mut f = File::create("src/link_app.S")?;
    let mut apps: Vec<_> = fs::read_dir(TARGET_SRC_PATH)?
        .map(|dir_entry| {
            let mut name_with_ext = dir_entry.unwrap().file_name().into_string().unwrap();
            name_with_ext.drain(name_with_ext.find('.').unwrap()..name_with_ext.len());
            name_with_ext
        })
        .collect();
    apps.sort();

    writeln!(
        f,
        r#".align 3
.section .data
.global __num_app
__num_app:
    .quad {}"#,
        apps.len()
    )?;

    for i in 0..apps.len() {
        writeln!(f, "    .quad app_{i}_start")?;
    }
    writeln!(f, "    .quad app_{}_end", apps.len() - 1)?;

    for (i, app) in apps.iter().enumerate() {
        println!("app_{i}: {app}");
        writeln!(
            f,
            r#"
.section .data
.global app_{i}_start, app_{i}_end
app_{i}_start:
    .incbin "{TARGET_PATH}{app}.bin"
app_{i}_end:"#
        )?;
    }

    Ok(())
}

fn main() {
    println!("cargo:rerun-if-changed={TARGET_SRC_PATH}");
    println!("cargo:rerun-if-changed={}", TARGET_PATH);
    insert_app_data().unwrap();
}
