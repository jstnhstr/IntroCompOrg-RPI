@ fractionDisplay.s
@ Displays a fraction in num/den format
@ input
@	r0 <- address to struct fraction
@ 2018-06-03: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Constant program data
fractionLine:
	.asciz	"/"

@ Constants for assembler
	.include	"fractionStruct.s"

@ fractionDisplay
	.text
	.align	2
	.global	fractionDisplay
	.type	fractionDisplay, %function
fractionDisplay:
	sub	sp, sp, 16
	str	r4, [sp, 0]
	str	fp, [sp, 4]
	str	lr, [sp, 8]
	add	fp, sp, 8

	mov	r4, r0		@ address to struct function

	ldr	r0, [r4, num]
	bl	putDecInt

	ldr	r0, fractionLineAddr
	bl	writeStr

	ldr	r0, [r4, den]
	bl	putDecInt

	ldr	r4, [sp, 0]
	ldr	fp, [sp, 4]
	ldr	lr, [sp, 8]
	add	sp, sp, 16
	bx	lr

	.align	2
fractionLineAddr:
	.word	fractionLine
