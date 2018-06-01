@ incrementUInt.s
@ Solution for exercise 27 problem 1 (and 2 in `incrementUInt2` target).
@ 2018-05-30: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	nBytes,9
	.equ	tempString,-16
	.equ	outputString,-28
	.equ	locals,24

@ Constant program data
	.section	.rodata
	.align	2
prompt:
	.asciz	"Enter an unsigned integer: "
	.align	2
display:
	.asciz	"Add 1 to get: %s\n"
	.align	2

@ The program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 8	@ allocate space for stack frame
	str	fp, [sp, 0]	@ save register values
	str	lr, [sp, 4]
	add	fp, sp, 4	@ set frame pointer
	sub	sp, sp, locals

	ldr	r0, promptAddr	@ prompt user
	bl	writeStr

	add	r0, fp, tempString
	mov	r1, nBytes	@ read user input
	bl	readLn

	add	r0, fp, tempString	@ convert decimal string to unsigned integer
	bl	uDecToInt

	add	r1, r0, 1		@ increment converted int by 1 and use as 2nd arg to uIntToDec
	add	r0, fp, outputString	@ print result
	bl	uIntToDec

	ldr	r0, displayAddr
	add	r1, fp, outputString
	bl	printf

	add	sp, sp, locals	@ deallocate local vars
	ldr	fp, [sp, 0]	@ restore register values
	ldr	lr, [sp, 4]
	add	sp, sp, 8
	bx	lr		@ return

promptAddr:
	.word	prompt
displayAddr:
	.word	display

