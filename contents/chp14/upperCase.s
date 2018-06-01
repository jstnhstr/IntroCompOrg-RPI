@ upperCase.s
@ Prompts user to enter alphabetic characters, converts
@ all lowercase to uppercase and shows the result.
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Constant for assembler
	.equ	nBytes,50	@ amount of memory for string
@ Constant program data
	.section	.rodata
	.align	2
prompt:
	.asciz	"Enter some alphabetic characters: "

@ The program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 8	@ space for fp, lr
	str	fp, [sp, 0]	@ save fp
	str	lr, [sp, 4]	@	and lr
	add	fp, sp, 4	@ set our frame pointer

	mov	r0, nBytes	@ get memory from heap
	bl	malloc
	mov	r4, r0		@ pointer to new memory

	ldr	r0, promptAddr	@ prompt user
	bl	writeStr

	mov	r0, r4		@ get user input
	mov	r1, nBytes	@ limit input size
	bl	readLn

	mov	r0, r4		@ convert to uppercase
	bl	toUpper

	mov	r0, r4		@ echo user input
	bl	writeStr

	mov	r0, r4		@ free heap memory
	bl	free

	mov	r0, 0		@ return 0;
	ldr	fp, [sp, 0]	@ restore caller fp
	ldr	lr, [sp, 4]	@	lr
	add	sp, sp, 8	@	and sp
	bx	lr		@ return

promptAddr:
	.word	prompt

