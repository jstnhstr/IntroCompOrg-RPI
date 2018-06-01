@ hexConvert2.s
@ Solution for exercise 26 problem 3; assembly version of hexConvert1.c
@ 2018-05-30: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Source code constants
	.equ	strSize,9

@ Constant program data
prompt:
	.asciz	"Enter up to 32-bit hex number: "
display:
	.asciz	"The integer is: %i\n"

@ The program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 16
	str	r4, [sp, 0]
	str	r5, [sp, 4]
	str	fp, [sp, 8]
	str	lr, [sp, 12]
	add	fp, sp, 12

	mov	r0, strSize
	bl	malloc
	mov	r4, r0		@ r4 = pointer to heap

	ldr	r0, promptAddr	@ Ask user for input
	bl	writeStr

	mov	r0, r4
	mov	r1, strSize
	bl	readLn
	
	mov	r0, r4
	bl	hexToInt
	mov	r5, r0		@ r5 = hexToInt result

	ldr	r0, displayAddr
	mov	r1, r5
	bl	printf

	mov	r0, r4		@ deallocate heap space
	bl	free

	mov	r0, 0		@ return 0;
	ldr	r4, [sp, 0]
	ldr	r5, [sp, 4]
	ldr	fp, [sp, 8]
	ldr	lr, [sp, 12]
	add	sp, sp, 16
	bx	lr

promptAddr:
	.word	prompt
displayAddr:
	.word	display
