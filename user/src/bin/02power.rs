#![no_std]
#![no_main]

use core::f32::consts::PI;

#[macro_use]
extern crate user_lib;

const SIZE: usize = 10;
const P: f32 = PI;
const STEP: usize = 100000;
const MOD: u32 = 10007;

fn float_mod(x: f32, n: u32) -> f32 {
    x - ((x as u32) / n * n) as f32
}

#[unsafe(no_mangle)]
fn main() -> i32 {
    let mut pow = [0_f32; SIZE];
    let mut index = 0_usize;
    pow[index] = 1.0;
    for i in 1..=STEP {
        let last = pow[index];
        index = (index + 1) % SIZE;
        pow[index] = float_mod(last * P, MOD);
        if i % 10000 == 0 {
            println!("{}^{}={}(MOD {})", P, i, pow[index], MOD);
        }
    }
    println!("Test power OK!");

    0
}
