@ sumHex.s
@ Solution for exercise 26 problem 4; sums two 32-bit hexadecimal numbers.
@ 2018-05-30: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Source code constants
	.equ	strSize,5
	.equ	outString,-32
	.equ	locals,16

@ Constant program data
	.section	.rodata
	.align	2
prompt1:
	.asciz	"Enter 1st 32-bit hexadecimal: "
prompt2:
	.asciz	"Enter 2nd 32-bit hexadecimal: "
display:
	.asciz	"%s + %s = %s\n"

@ The program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 16
	str	r4, [sp, 0]
	str	r5, [sp, 4]
	str	r6, [sp, 8]
	str	fp, [sp, 12]
	str	lr, [sp, 16]
	add	fp, sp, 16
	sub	sp, sp, locals	@ space for string of summed hex

	mov	r0, strSize
	bl	malloc
	mov	r4, r0		@ r4 = address to first hex

	mov	r0, strSize
	bl	malloc
	mov	r5, r0		@ r5 = address to second hex

	ldr	r0, promptAddr
	bl	writeStr

	mov	r0, r4
	mov	r1, strSize
	bl	readLn

	mov	r0, r4
	bl	hexToInt
	mov	r6, r0		@ r6 = first hex as int

	ldr	r0, promptAddr+4
	bl	writeStr

	mov	r0, r5
	mov	r1, strSize
	bl	readLn

	mov	r0, r5
	bl	hexToInt

	add	r6, r6, r0	@ r6 = integer sum of two hex inputs

	add	r0, fp, outString
	mov	r1, r6
	bl	intToHex

	ldr	r0, displayAddr	@ display inputs and summed hex
	mov	r1, r4
	mov	r2, r5
	add	r3, fp, outString
	bl	printf

	mov	r0, r4		@ deallocate heap space
	bl	free
	mov	r0, r5
	bl	free

	add	sp, sp, locals	@ deallocate space for summed hex string
	ldr	r4, [sp, 0]	@ restore register values
	ldr	r5, [sp, 4]
	ldr	r6, [sp, 8]
	ldr	fp, [sp, 12]
	ldr	lr, [sp, 16]
	add	sp, sp, 16
	bx	lr

promptAddr:
	.word	prompt1
	.word	prompt2
displayAddr:
	.word	display
