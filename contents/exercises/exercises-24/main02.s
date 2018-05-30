@ main02.s
@ main file for solution to exercise 24 problem 2.
@ 2018-05-28: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constant data
	.section	.rodata
	.align	2
input:
	.asciz	"Hello World"
	.align	2
fmt:
	.asciz	"\nOutput = %i\n"
	.align	2

@ Main program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 8	@ allocate space for stack frame
	str	fp, [sp, 0]	@ and store register values fp and lr
	str	lr, [sp, 4]
	add	fp, sp, 4	@ set frame pointer

	ldr	r0, inputAddr
	bl	writeStr

	mov	r1, r0		@ move total chars displayed for printf
	ldr	r0, fmtAddr
	bl	printf		@ print output returned by writeStr

	mov	r0, 0		@ return 0;	
	ldr	fp, [sp, 0]	@ restore register values
	ldr	lr, [sp, 4]
	add	sp, sp, 8	@ deallocate stack frame
	bx	lr		@ return

	.align	2
inputAddr:
	.word	input
	.align	2

fmtAddr:
	.word	fmt
	.align	2

