@ nineInts2.s
@ Sums 1 through 9
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Useful source code constants
	.equ	a,-8
	.equ	b,-12
	.equ	c,-16
	.equ	d,-20
	.equ	e,-24
	.equ	f,-28
	.equ	g,-32
	.equ	h,-36
	.equ	i,-40
	.equ	total,-44
	.equ	locals,40
@ Need 5 args on stack for sumNine function
	.equ	arg5,0
	.equ	arg6,4
	.equ	arg7,8
	.equ	arg8,12
	.equ	arg9,16
	.equ	argSz,24	@ 5x4, 8-byte aligned

@ Program constant data
	.section	.rodata
	.align	2
resultMsg:
	.asciz	"The sum is %i\n"

@ The code
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 8	@ space for fp, lr
	str	fp, [sp, 0]	@ save fp
	str	lr, [sp, 4]	@	and lr
	add	fp, sp, 4	@ set our frame pointer
	sub	sp, sp, locals	@ space for locals

	mov	r3, 1		@ initialize local vars
	str	r3, [fp, a]	@ a = 1;
	mov	r3, 2
	str	r3, [fp, b]	@ b = 2;
	mov	r3, 3
	str	r3, [fp, c]	@ etc...
	mov	r3, 4
	str	r3, [fp, d]
	mov	r3, 5
	str	r3, [fp, e]
	mov	r3, 6
	str	r3, [fp, f]
	mov	r3, 7
	str	r3, [fp, g]
	mov	r3, 8
	str	r3, [fp, h]
	mov	r3, 9
	str	r3, [fp, i]	@ i = 9;

@ Function call: sumNine(a, b, c, d, e, f, g, h, i);
	sub	sp, sp, argSz	@ space for args
	ldr	r3, [fp, e]	@ set up args for call
	str	r3, [sp, arg5]	@ e is 5th arg
	ldr	r3, [fp, f]
	str	r3, [sp, arg6]	@ f is 6th arg
	ldr	r3, [fp, g]
	str	r3, [sp, arg7]	@ etc...
	ldr	r3, [fp, h]
	str	r3, [sp, arg8]
	ldr	r3, [fp, i]
	str	r3, [sp, arg9]
	ldr	r0, [fp, a]	@ args 1 - 4
	ldr	r1, [fp, b]	@	go in
	ldr	r2, [fp, c]	@	regs
	ldr	r3, [fp, d]	@	0 - 3
	bl	sumNine
	add	sp, sp, argSz	@ restore sp
	str	r0, [fp, total]	@ total returned in r0

	ldr	r0, resultMsgAddr	@ print result
	ldr	r1, [fp, total]
	bl	printf

	mov	r0, 0		@ return 0;
	add	sp, sp, locals	@ deallocate local var
	ldr	fp, [sp, 0]	@ restore caller fp
	ldr	lr, [sp, 4]	@	lr
	add	sp, sp, 8	@ 	and sp
	bx	lr

	.align	2
resultMsgAddr:
	.word	resultMsg

