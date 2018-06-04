@ printArray2.s
@ Stores index number in each element of array
@ and prints the array.
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Constants for assembler
	.equ	nElements,10	@ number of elements in array
	.equ	intArray,-52	@ array beginning
	.equ	decString,-68	@ for decimal text string
	.equ	locals,56	@ space for local vars

@ The program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 16	@ space for saving regs
	str	r4, [sp, 0]	@ save r4
	str	r5, [sp, 4]	@	r5
	str	fp, [sp, 8]	@	fp
	str	lr, [sp, 12]	@	lr
	add	fp, sp, 12	@ set our frame pointer
	sub	sp, sp, locals	@ for the array

	add	r4, fp, intArray	@ address of array beginning
	mov	r5, 0			@ index = 0;
fillLoop:
	cmp	r5, nElements	@ all filled?
	bge	allFull		@ yes
	lsl	r0, r5, 2	@ no, offset is 4 * index
	str	r5, [r4, r0]	@ at index-th element
	add	r5, r5, 1	@ index++;
	b	fillLoop
allFull:
	add	r4, fp, intArray	@ address of array beginning
	mov	r5, 0			@ index = 0;
printLoop:
	cmp	r5, nElements		@ all filled?
	bge	allDone			@ yes
	lsl	r0, r5, 2		@ no, offset is 4 * index
	ldr	r1, [r4, r0]		@ get index-th element
	add	r0, fp, decString	@ to store decimal string
	bl	uIntToDec		@ convert it
	add	r0, fp, decString	@ get decimal string
	bl	writeStr		@ write it
	bl	newLine
	add	r5, r5, 1		@ index++;
	b	printLoop
allDone:
	mov	r0, 0			@ return 0;
	add	sp, sp, locals		@ deallocate local var
	ldr	r4, [sp, 0]		@ restore r4
	ldr	r5, [sp, 4]		@	r5
	ldr	fp, [sp, 8]		@	fp
	ldr	lr, [sp, 12]		@	lr
	add	sp, sp, 16		@ restore sp
	bx	lr			@ return

