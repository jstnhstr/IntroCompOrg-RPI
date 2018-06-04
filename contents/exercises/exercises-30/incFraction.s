@ incFraction.s
@ Solution for exercise 30 problem 1; assembly version of incFraction.c
@ 2018-06-03: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	locals,8
	.equ	this,-12	@ address to struct function

@ Constants for assembler
	.include "fractionStruct.s"

@ The program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 8
	str	fp, [sp, 0]
	str	lr, [sp, 4]
	add	fp, sp, 4
	sub	sp, sp, locals

	add	r0, fp, this
	bl	fraction
	bl	fractionGet
	add	r0, fp, this
	mov	r1, 1
	bl	fractionAddInt
	bl	fractionDisplay
	bl	newLine

	add	sp, sp, locals
	ldr	fp, [sp, 0]
	ldr	lr, [sp, 4]
	add	sp, sp, 8
	mov	r0, 0
	bx	lr

