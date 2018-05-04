@ int3.s
@ Third assembly function for exercise 19 problem 4.

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Program code
	.text
	.align 2
	.global int3
	.type int3, %function

int3:
	str	fp, [sp, -4]!
	add	fp, sp, 0
	mov	r0, 89
	sub	sp, fp, 0
	ldr	fp, [sp], 4
	bx	lr
