use crate::batch::run_next_app;

pub fn sys_exit(xstate: i32) -> ! {
    println!("[kernel] Application exited with code {}\n", xstate);
    run_next_app();
}

pub fn sys_get_taskinfo(){

}