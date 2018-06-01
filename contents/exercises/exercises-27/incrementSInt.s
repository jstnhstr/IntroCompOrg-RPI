@ incrementSInt.s
@ Solution for exercise 27 problem 3.
@ 2018-05-31: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	nBytes,9
	.equ	PLUS,0x2b
	.equ	MINUS,0x2d
	.equ	tempString,-16
	.equ	outputString,-28
	.equ	locals,24

@ Constant program data
	.section	.rodata
	.align	2
prompt:
	.asciz	"Enter a signed integer: "
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
	sub	sp, sp, 24	@ allocate space for stack frame
	str	r4, [sp, 0]	@ save register values
	str	r5, [sp, 4]
	str	r6, [sp, 8]
	str	fp, [sp, 12]
	str	lr, [sp, 16]
	add	fp, sp, 16	@ set frame pointer
	sub	sp, sp, locals

	ldr	r0, promptAddr	@ prompt user
	bl	writeStr

	add	r0, fp, tempString
	mov	r1, nBytes	@ read user input
	bl	readLn

	mov	r4, PLUS		@ r4 = sign of integer
	add	r5, fp, tempString	@ r5 = address of stored input string
	ldrb	r6, [r5]		@ load first input char to check for sign
	cmp	r6, MINUS		@ check if first char input is minus
	beq	updateSign		@ if so, update r4 and increment r5 to skip - char
	cmp	r6, PLUS		@ also check for plus char input
	beq	updateSign		@ and update the sign register to skip + char
	b	readInt			@ otherwise, start reading the input as if it were an unsigned int
updateSign:
	mov	r4, r6			@ update sign of integer
	add	r5, r5, 1		@ increment r5 address to skip sign char
readInt:
	mov	r0, r5		@ load address to first numeric char in stored input
	bl	uDecToInt	@ set r0 to converted int

				@ add 1 to the number
	cmp	r0, 0		@ check if int is zero
	beq	zero		@ if so, just add 1 to handle -0
	cmp	r4, PLUS	@ check if sign is to be plus
	addeq	r1, r0, 1	@ if so, increment signed integer
	cmp	r4, MINUS	@ otherwise, check if sign is minus
	subeq	r1, r0, 1	@ if minus, decrement signed integer instead
				@ r1 = int to convert for uIntToDec call
	b	output		@ jump to output label to skip zero's special case
zero:
	add	r1, r0, 1
output:
	add	r6, fp, outputString	@ load address where updated integer will be converted back to string
	strb	r4, [r6]		@ store sign in output string
	add	r6, r6, 1		@ increment output pointer to keep sign char
	mov	r0, r6			@ use r6 as input arg to uIntToDec
	bl	uIntToDec

	ldr	r0, displayAddr
	add	r1, fp, outputString
	bl	printf

	add	sp, sp, locals	@ deallocate local vars
	ldr	r4, [sp, 0]	@ restore register values
	ldr	r5, [sp, 4]
	ldr	r6, [sp, 8]
	ldr	fp, [sp, 12]
	ldr	lr, [sp, 16]
	add	sp, sp, 24
	bx	lr		@ return

promptAddr:
	.word	prompt
displayAddr:
	.word	display

