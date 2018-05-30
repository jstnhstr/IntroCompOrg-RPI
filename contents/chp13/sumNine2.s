@ sumNine2.s
@ Computes sum of nine integers.
@ Calling sequence:
@ 	Four ints in r0 - r3
@	Five ints pushed onto stack
@	bl	sumNine
@	Sum returned in r0
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Useful source code constants
	.equ	five,4		@ args 5 - 9
	.equ	six,8
	.equ	seven,12
	.equ	eight,16
	.equ	nine,20

	.text
	.align	2
	.global	sumNine
	.type	sumNine, %function
sumNine:
	sub	sp, sp, 8	@ space for fp, lr
	str	fp, [sp, 0]	@ save fp
	str	lr, [sp, 4]	@	and lr
	add	fp, sp, 4	@ set our frame pointer
@ Sum four register arguments
	add	r0, r0, r1	@ subtotal = one + two
	add	r0, r0, r2	@ subtotal += three
	add	r0, r0, r3	@ subtotal += four
@ Add in five arguments from stack
	ldr	r3, [fp, five]	@ load five
	add	r0, r0, r3	@ subtotal += five
	ldr	r3, [fp, six]	@ load six
	add	r0, r0, r3	@ subtotal += six
	ldr	r3, [fp, seven]	@ load seven
	add	r0, r0, r3	@ subtotal += seven
	ldr	r3, [fp, eight]	@ load eight
	add	r0, r0, r3	@ subtotal += eight
	ldr	r3, [fp, nine]	@ load nine
	add	r0, r0, r3	@ total += nine
				@ 	ready for return
	ldr	fp, [sp, 0]	@ restore caller fp
	ldr	lr, [sp, 4]	@	lr
	add	sp, sp, 8	@	and sp
	bx	lr		@ return

