@ int2.s
@ Second assembly function for exercise 19 problem 4.

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Program code
	.text
	.align 2
	.global int2
	.type int2, %function

int2:
	str	fp, [sp, -4]!
	add	fp, sp, 0
	mov	r0, 34
	sub	sp, fp, 0
	ldr	fp, [sp], 4
	bx	lr
