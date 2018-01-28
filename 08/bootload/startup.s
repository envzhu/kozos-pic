   .section .startup,"ax",@progbits
   .set noreorder
   .global	_start
   .ent _start
_start:
    la $sp, _bootstack
    /*la $gp, _gp*/

    mfc0    $t1, $12, 2
    add     $t3, $t1, $0
    ext     $t2, $t1, 26, 4
    ins     $t1, $t2, 6, 4
    mtc0    $t1, $12, 2
    ehb
    mtc0    $t3, $12, 2


    /*
    * Setup co-processor (CP0)
    */
    mtc0 $0, $9, 0                # COUNT register, time zero...

    li $t2, -1
    mtc0 $t2, $11, 0              # COMPARE register, just in case

    la $t1, _ebase_address
    mtc0 $t1, $15, 1              # EBASE register points to interrupt vector table

    la $t1, _vector_spacing
    li $t2, 0
    ins $t2, $t1, 5, 5
    mtc0 $t2, $12, 1              # INTCTL register specifies vectors positions

    li $t1, 0x00800000
    mtc0 $t1, $13, 0              # CAUSE register: reset everything, set IV bit to enable vectored interrupts

    li $t1, 0
    mtc0 $t1, $12, 0              # STATUS register: reset everything: BEV = 0 (enable vectored interrupts), IPL = 0 (lowest priority run mode).

    /*
    * call main function.
    */
    and $a0, $a0, 0
    and $a1, $a1, 0
    jal main
    nop

    1:
    j 1b
    nop
.end _start
