@ printAlphabet.s
@ Solution for exercise 22 problem 2; prints alphabet from A to Z.
@ 2018-05-24: Justin Hester

@ Define Raspberry Pi.
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	STDOUT,1
	.equ	Z,'Z'
	.equ	LETTER,-9	@ Distance in bytes where letter is stored in stack relative to fp
	.equ	LOCAL,8

@ Constant program data
	.section	.rodata
	.align	2
	
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 8	@ allocate space for saved vars
	str	fp, [sp, 4]	@ push register values onto stack
	str	lr, [sp, 8]
	add	fp, sp, 8	@ set frame pointer
	sub	sp, sp, LOCAL	@ allocate space for local var

	mov	r3, 'A'
while:
	strb	r3, [fp, LETTER]

	mov	r0, STDOUT
	add	r1, fp, LETTER
	mov	r2, 1
	bl	write

	cmp	r3, Z
	beq	done

	add	r3, r3, 1
	b	while

done:
	mov	r0, 0
	add	sp, sp, LOCAL	@ deallocate local var space
	ldr	fp, [sp, 4]	@ pop stored register values from stack
	ldr	lr, [sp, 8]
	add	sp, sp, 8	@ deallocate stack frame
	bx	lr 
	
