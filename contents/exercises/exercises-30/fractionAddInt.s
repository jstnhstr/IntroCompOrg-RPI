@ fractionAddInt.s
@ adds an integer to the fraction
@ inputs
@	r0 <- address to struct function
@	r1 <- int theValue
@ 2018-06-03: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Constants for assembler
	.include	"fractionStruct.s"

@ fractionAddInt
	.text
	.align	2
	.global	fractionAddInt
	.type	fractionAddInt, %function
fractionAddInt:
	sub	sp, sp, 24
	str	r4, [sp, 0]
	str	r5, [sp, 4]
	str	r6, [sp, 8]
	str	fp, [sp, 12]
	str	lr, [sp, 16]
	add	fp, sp, 16

	mov	r4, r0		@ r4 = address to struct fraction
	ldr	r5, [r4, num]	@ r5 = this->num
	ldr	r6, [r4, den]	@ r6 = this->den

	mul	r6, r6, r1	@ r6 = theValue * this->den
	add	r5, r5, r6	@ r5 = this->num + theValue * this->den
	str	r5, [r4, num]	@ update this->num

	ldr	r4, [sp, 0]
	ldr	r5, [sp, 4]
	ldr	r6, [sp, 8]
	ldr	fp, [sp, 12]
	ldr	lr, [sp, 16]
	add	sp, sp, 24
	bx	lr

