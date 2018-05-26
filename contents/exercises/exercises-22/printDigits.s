@ printDigits.s
@ Solution to exercise 22 problem 1; prints numerals 0 to 9.
@ 2018-05-24: Justin Hester

@ Define Raspberry Pi.
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	STDOUT,1
	.equ	NINE,'9'
	.equ	LOCAL,8
	.equ	NUMERAL,-9	@ location of local char var relative to fp

@ Constant program data
	.section	.rodata
	.align	2

	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 8	@ allocate space for saved vars
	str	fp, [sp, 4]	@ push register values to stack
	str	lr, [sp, 8]
	add	fp, sp, 8	@ set frame pointer to indicate stack frame
	sub	sp, sp, LOCAL	@ allocate space for local var

	mov	r3, '0' 	@ store initial numeral
whileLoop:
	strb	r3, [fp, NUMERAL] 

	mov	r0, STDOUT
	add	r1, fp, NUMERAL
	mov	r2, 1
	bl	write

	cmp	r3, NINE	@ check if numeral is 9
	beq	done

	add	r3, r3, 1	@ increment numeral char and return to top of loop
	b	whileLoop
done:
	mov	r0, 0		@ return 0 to runtime environment
	add	sp, sp, LOCAL	@ deallocate local var space
	ldr	fp, [sp, 4]	@ pop saved register values from stack
	ldr	lr, [sp, 8]
	add	sp, sp, 8	@ deallocate stack space
	bx	lr		@ return

