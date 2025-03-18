use core::fmt::Debug;

use crate::syscall::SyscallInfo;

const MAX_SYSCALL_NUM: usize = 200;

#[repr(C)]
#[derive(Copy, Clone, PartialEq, Default, Debug)]
pub enum TaskStatus {
    #[default]
    UnInit,
    Ready,
    Running,
    Exited,
}

#[repr(C)]
pub struct TaskInfo {
    pub id: usize,
    pub status: TaskStatus,
    pub time: usize,
    pub call: [SyscallInfo; MAX_SYSCALL_NUM],
}

impl Default for TaskInfo {
    fn default() -> Self {
        TaskInfo {
            id: 0,
            status: TaskStatus::default(),
            time: 0,
            call: [SyscallInfo::default(); MAX_SYSCALL_NUM],
        }
    }
}

impl Debug for TaskInfo {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        writeln!(
            f,
            r#"TaskInfo {{
    id: {},
    status: {:?},
    time: {}s,
    call: ["#,
            self.id,
            self.status,
            // self.time,
            self.time as f32 / 1_000_000_f32,
        )?;
        for info in &self.call {
            if info.times > 0 {
                writeln!(f, "        {:?},", info)?;
            }
        }
        writeln!(f, "    ],\n}}")
    }
}
