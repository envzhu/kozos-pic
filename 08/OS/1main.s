	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	oddspreg
 #APP
	 .section .softvec1,"ax",@progbits
	.set noreorder
	.ent softvec1
	softvec1:
	j uart_intr
	nop
	.end softvec1
	.globl softvec1
	.text
 #NO_APP
	.text
	.align	2
	.globl	syscall
	.set	nomips16
	.set	nomicromips
	.ent	syscall
	.type	syscall, @function
syscall:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	li	$2,-1124073472			# 0xffffffffbd000000
	ori	$2,$2,0x4ec0
	jr	$2
	nop

	.set	macro
	.set	reorder
	.end	syscall
	.size	syscall, .-syscall
	.rdata
	.align	2
$LC0:
	.ascii	"kozos boot succeed!\012\000"
	.align	2
$LC1:
	.ascii	"> \000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
 #APP
 # 12 "main.c" 1
	syscall
 # 0 "" 2
 #NO_APP
	li	$2,-1081606144			# 0xffffffffbf880000
	ori	$2,$2,0x1078
	sw	$2,16($fp)
	li	$2,-1081606144			# 0xffffffffbf880000
	ori	$2,$2,0x1044
	sw	$2,20($fp)
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	jal	puts
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	jal	puts
$L3:
	b	$L3
	.end	main
	.size	main, .-main
	.rdata
	.align	2
$LC2:
	.ascii	"echo\000"
	.align	2
$LC3:
	.ascii	"\012\000"
	.align	2
$LC4:
	.ascii	"unknown.\012\000"
	.text
	.align	2
	.globl	uart_intr
	.set	nomips16
	.set	nomicromips
	.ent	uart_intr
	.type	uart_intr, @function
uart_intr:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	li	$2,-1081606144			# 0xffffffffbf880000
	ori	$2,$2,0x1074
	sw	$2,16($fp)
	li	$2,-1081606144			# 0xffffffffbf880000
	ori	$2,$2,0x1044
	sw	$2,20($fp)
	lw	$2,16($fp)
	li	$3,4194304			# 0x400000
	sw	$3,0($2)
	lw	$2,20($fp)
	li	$3,4194304			# 0x400000
	sw	$3,0($2)
	jal	getc
	nop

	sw	$2,24($fp)
	lw	$3,24($fp)
	li	$2,10			# 0xa
	beq	$3,$2,$L5
	nop

	lui	$2,%hi(len.992)
	lw	$2,%lo(len.992)($2)
	addiu	$4,$2,1
	lui	$3,%hi(len.992)
	sw	$4,%lo(len.992)($3)
	lw	$3,24($fp)
	seb	$3,$3
	lui	$4,%hi(buf.991)
	addiu	$4,$4,%lo(buf.991)
	addu	$2,$2,$4
	sb	$3,0($2)
	b	$L6
	nop

$L5:
	lui	$2,%hi(len.992)
	lw	$2,%lo(len.992)($2)
	addiu	$4,$2,1
	lui	$3,%hi(len.992)
	sw	$4,%lo(len.992)($3)
	lui	$3,%hi(buf.991)
	addiu	$3,$3,%lo(buf.991)
	addu	$2,$2,$3
	sb	$0,0($2)
	li	$6,4			# 0x4
	lui	$2,%hi($LC2)
	addiu	$5,$2,%lo($LC2)
	lui	$2,%hi(buf.991)
	addiu	$4,$2,%lo(buf.991)
	jal	strncmp
	nop

	bne	$2,$0,$L7
	nop

	lui	$2,%hi(buf.991+4)
	addiu	$2,$2,%lo(buf.991+4)
	move	$4,$2
	jal	puts
	nop

	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	jal	puts
	nop

	b	$L8
	nop

$L7:
	lui	$2,%hi($LC4)
	addiu	$4,$2,%lo($LC4)
	jal	puts
	nop

$L8:
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	jal	puts
	nop

	lui	$2,%hi(len.992)
	sw	$0,%lo(len.992)($2)
$L6:
	li	$2,-1081606144			# 0xffffffffbf880000
	ori	$2,$2,0x1078
	sw	$2,28($fp)
	lw	$2,28($fp)
	li	$3,4194304			# 0x400000
	sw	$3,0($2)
	nop
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	uart_intr
	.size	uart_intr, .-uart_intr
	.local	buf.981
	.comm	buf.981,32,4
	.local	len.992
	.comm	len.992,4,4
	.local	buf.991
	.comm	buf.991,32,4
	.ident	"GCC: (GNU) 7.1.0"
