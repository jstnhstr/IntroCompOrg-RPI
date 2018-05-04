@ g.s
@ Solution for exercise 19 problem 3.

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Program code
	.text
	.align 2
	.global g
	.type g, %function

g:
	str	fp, [sp, -4]!
	add	fp, sp, 0
	mov	r0, 123
	sub	sp, fp, 0
	ldr	fp, [sp], 4
	bx	lr
