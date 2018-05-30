@ main04.s
@ Solution for exercise 24 problem 4; reads user input up to a max amount of chars and outputs with writeStr.
@ 2018-05-29: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	CAPACITY,6	@ total heap memory
	.equ	MAX,5		@ max number of chars to read

@ Constant program data
	.section	.rodata
	.align	2
inputPrompt:
	.asciz	"Enter line: "
	.align	2

@ Main program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 8
	str	fp, [sp, 0]
	str	lr, [sp, 4]
	add	fp, fp, 4

	mov	r0, CAPACITY
	bl	malloc
	mov	r4, r0		@ keep a copy of heap address to make way for readLn arg

	ldr	r0, inputPromptAddr	@ Display text asking user for keyboard input
	bl	writeStr

	mov	r0, r4
	mov	r1, MAX
	bl	readLn		@ malloc has already stored pointer to heap memory in r0, so just call readLn
	mov	r5, r0		@ copy readLn output to make way for writeStr arg

	mov	r0, r4		@ Display user input with writeStr function
	bl	writeStr

	mov	r0, r4		@ Load pointer to heap memory and deallocate that memory with free
	bl	free

	mov	r0, 0		@ return 0;
	ldr	fp, [sp, 0]	@ restore register values
	ldr	lr, [sp, 4]
	add	sp, sp, 8	@ deallocate stack frame
	bx	lr		@ return

	.align	2
inputPromptAddr:
	.word	inputPrompt
	.align	2

