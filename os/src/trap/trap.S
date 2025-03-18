.altmacro
.macro SAVE_GP n
    sd x\n, \n * 8(sp)
.endm

.macro LOAD_GP n
    ld x\n, \n * 8(sp)
.endm

.macro SAVE_FP n
    fsd f\n, (\n + 32) * 8(sp)
.endm

.macro LOAD_FP n
    fld f\n, (\n + 32) * 8(sp)
.endm

.align 2
.section .text
.global __alltraps, __restore
__alltraps:
    csrr tp, sstatus
    andi tp, tp, 1 << 8
    bnez tp, __real_trap_entry

__user_trap_start:
    # 将 sp 设置为内核栈，sscratch 设置为用户栈
    csrrw sp, sscratch, sp

__real_trap_entry:
    # 在内核栈上分配一个 TrapContext
    addi sp, sp, -66 * 8; # sp = sp + -66 * 8
    # 保存通用寄存器
    sd x1, 1 * 8(sp)
    sd x3, 3 * 8(sp)
    .set n, 5
    .rept 27
        SAVE_GP %n
        .set n, n + 1
    .endr
    .set n, 0
    .rept 32
        SAVE_FP %n
        .set n, n + 1
    .endr
    # 保存 sstatus 和 sepc
    csrr t0, sstatus
    csrr t1, sepc
    sd t0, 64 * 8(sp)
    sd t1, 65 * 8(sp)
    # 保存用户栈
    csrr t2, sscratch
    sd t2, 2 * 8(sp)
    # 将 a0 设置为 TrapContext 的地址，即传入参数
    mv a0, sp
    call trap_handler

__restore:
    # 读取 sstatus, sepc 和 sscratch
    ld t0, 64 * 8(sp)
    ld t1, 65 * 8(sp)
    ld t2, 2 * 8(sp)
    csrw sstatus, t0
    csrw sepc, t1
    csrw sscratch, t2
    andi t0, t0, 1 << 8
    bnez t0, __kernel_trap_end

__user_trap_end:
    # 读取通用寄存器
    ld x1, 1 * 8(sp)
    ld x3, 3 * 8(sp)
    .set n, 5
    .rept 27
        LOAD_GP %n
        .set n, n + 1
    .endr
    .set n, 0
    .rept 32
        LOAD_FP %n
        .set n, n + 1
    .endr
    addi sp, sp, 66 * 8; # sp = sp + 66 * 8
    csrrw sp, sscratch, sp
    sret

__kernel_trap_end:
    # 读取通用寄存器
    ld x1, 1 * 8(sp)
    ld x3, 3 * 8(sp)
    .set n, 5
    .rept 27
        LOAD_GP %n
        .set n, n + 1
    .endr
    .set n, 0
    .rept 32
        LOAD_FP %n
        .set n, n + 1
    .endr
    addi sp, sp, 66 * 8; # sp = sp + 66 * 8
    sret