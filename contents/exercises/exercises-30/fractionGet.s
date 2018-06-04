@ fractionGet.s
@ Displays a fraction in num/den format
@ 2018-06-03: Justin hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Constant program data
	.section	.rodata
	.align	2
promptNum:
	.asciz	"Enter numerator: "
promptDen:
	.asciz	"Enter denominator: "

@ Constants for assembler
	.include	"fractionStruct.s"

@ fractionGet
	.text
	.align	2
	.global	fractionGet
	.type	fractionGet, %function
fractionGet:
	sub	sp, sp, 16
	str	r4, [sp, 0]
	str	fp, [sp, 4]
	str	lr, [sp, 8]
	add	fp, sp, 8

	mov	r4, r0		@ r4 = address to struct fraction

	ldr	r0, promptNumAddr
	bl	writeStr

	bl	getDecInt
	str	r0, [r4, num]

	ldr	r0, promptDenAddr
	bl	writeStr

	bl	getDecInt
	str	r0, [r4, den]

	ldr	r4, [sp, 0]
	ldr	fp, [sp, 4]
	ldr	lr, [sp, 8]
	add	sp, sp, 16
	bx	lr

	.align	2
promptNumAddr:
	.word	promptNum
promptDenAddr:
	.word	promptDen

