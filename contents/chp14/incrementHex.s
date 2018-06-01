@ incrementHex.s
@ Prompts user for hex number and adds 1 to it
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Constant for assembler
	.equ	maxChars,9	@ max input chars
	.equ	inString,-16	@ for input string
	.equ	outString,-28	@for output string
	.equ	locals,24	@ space for local vars

@ Constant program data
	.section	.rodata
	.align	2
prompt:
	.asciz	"Enter up to 32-bit hex number: "
display:
	.asciz	"Adding 1 gives: "

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
	sub	sp, sp, locals	@ for local vars

	ldr	r0, promptAddr	@ prompt user
	bl	writeStr

	add	r0, fp, inString	@ place for user input
	mov	r1, maxChars		@ limit input size
	bl	writeStr

	add	r0, fp, inString	@ place for user input
	mov	r1, maxChars		@ limit input size
	bl	readLn

	add	r0, fp, inString	@ user input
	bl	hexToInt		@ convert it

	add	r1, r0, 1		@ add one to the int
	add	r0, fp, outString	@ place for result
	bl	intToHex		@ convert to string

	ldr	r0, displayAddr		@ show user result
	bl	writeStr

	add	r0, fp, outString
	bl	writeStr

	bl	newLine			@ looks nicer

	mov	r0, 0		@ return 0;
	add	sp, sp, locals	@ deallocate local var
	ldr	fp, [sp, 0]	@ restore caller fp
	ldr	lr, [sp, 4]	@	lr
	add	sp, sp, 8	@ 	and sp
	bx	lr		@ return

promptAddr:
	.word	prompt
displayAddr:
	.word	display

