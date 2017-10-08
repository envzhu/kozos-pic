   .section .startup,"ax",@progbits
   .set noreorder
   .global	_start
   .ent _start
_start:

   /*
    * Check if it is a reset.
    */
   mfc0 $k0, $12, 0                 # STATUS register
   ext $k0, $k0, 19, 1              # NMI bit
   beqz $k0, _is_a_reset
   nop

   /*
    * NMI interrupt.
    * In the PIC32, this happens when the watchdog bites de CPU when in sleep mode.
    * Nothing to do, we just return to let CPU wakeup.
    */
   eret
   nop

_is_a_reset:
   /*
    * Start memory pointers.
    * They initial values are chosen by the linker (_stack, _gp).
    */
   la $sp, _bootstack
   la $gp, _gp

   mfc0    $t1, $12, 2
   add     $t3, $t1, $0
   ext     $t2, $t1, 26, 4
   ins     $t1, $t2, 6, 4
   mtc0    $t1, $12, 2
   ehb
   wrpgpr  $gp,$gp                  /* Change $gp in shadow registers as well */
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
    * Startup done: call main function.
    */
   and $a0, $a0, 0
   and $a1, $a1, 0
   j main
   nop
   .end _start
