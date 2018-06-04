@ putChar.s


@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	CHAR,-8

@ Constant program data
display:
	.asciz	"%s"

@ The program
	.text
	.align	2
	.global	putChar
	.type	putChar, %function
putChar:
	sub	sp, sp, 8
	str	fp, [sp, 0]
	str	lr, [sp, 4]
	add	fp, sp, 4
	sub	sp, sp, 8

	strb	r0, [fp, CHAR]
	add	r0, fp, CHAR
	bl	writeStr

	add	sp, sp, 8
	ldr	fp, [sp, 0]
	ldr	lr, [sp, 4]
	add	sp, sp, 8
	bx	lr

displayAddr:
	.word	display

