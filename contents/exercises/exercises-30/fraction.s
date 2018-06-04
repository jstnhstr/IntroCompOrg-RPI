@ fraction.s
@ A fraction "constructor" in assembly
@ input
@	r0 <- address to struct fraction
@ 2018-06-03: Justin Hester

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Constants for assemblers
	.include "fractionStruct.s"

@ fraction
	.text
	.align	2
	.global	fraction
	.type	fraction, %function
fraction:
	sub	sp, sp, 16
	str	r4, [sp, 0]
	str	fp, [sp, 4]
	str	lr, [sp, 8]
	add	fp, sp, 8

	mov	r4, 0
	str	r4, [r0, num]	@ this->num = 0;
	mov	r4, 1
	str	r4, [r0, den]	@ this->den = 1;

	ldr	r4, [sp, 0]
	ldr	fp, [sp, 4]
	ldr	lr, [sp, 8]
	add	sp, sp, 16
	bx	lr

