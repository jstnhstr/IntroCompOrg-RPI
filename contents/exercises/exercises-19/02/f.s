@ f.s
@ Solution for exercise 19 problem 2.

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Program code
	.text
	.align 2
	.global f
	.type f, %function

f:
	str	fp, [sp, -4]!
	add	fp, sp, 0
	mov	r0, 0
	sub	sp, fp, 0
	ldr	fp, [sp], 4
	bx	lr
