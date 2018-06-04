@ reverse.s
@ Solves exercise 28 problem 1; asks user for 10 signed integers and returns them in reverse order.
@ 2018-06-02: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	nElements,10
	.equ	intArray,-52
	.equ	locals,64

@ Constant program data
	.section	.rodata
	.align	2
prompt:
	.asciz	"Input integer: "
	.align	2

@ The program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 16	@ allocate space for vars
	str	r4, [sp, 0]	@ save register values
	str	r5, [sp, 4]
	str	fp, [sp, 8]
	str	lr, [sp, 12]
	add	fp, sp, 12	@ set frame pointer
	sub	sp, sp, locals	@ allocate space for local vars

	add	r4, fp, intArray	@ r4 = address to start of array
	mov	r5, 0			@ r5 = index to i-th element

loadArray:
	cmp	r5, nElements	@ check if the index has reached end of array
	beq	printArray	@ if so, start to print elements
	ldr	r0, promptAddr	@ otherwise, prompt user for next integer
	bl	writeStr
	bl	getDecInt
	lsl	r1, r5, 2	@ get offset to i-th element
	str	r0, [r4, r1]	@ store result of getDecInt in array[i]
	add	r5, r5, 1
	b	loadArray
printArray:
	sub	r5, r5, 1	@ decrement index
	lsl	r0, r5, 2	@ set r0 to offset to i-th element
	ldr	r0, [r4, r0]	@ load array[i] to print with putDecInt
	bl	putDecInt
	bl	newLine
	cmp	r5, 0		@ check if r5 is zero
	beq	done		@ if so, finish program
	b	printArray	@ otherwise, loop to next array element
done:
	add	sp, sp, locals	@ deallocate local vars
	ldr	r4, [sp, 0]	@ restore register values
	ldr	r5, [sp, 4]
	ldr	fp, [sp, 8]
	ldr	lr, [sp, 12]
	add	sp, sp, 16	@ deallocate space for register values
	bx	lr		@ return

	.align	2
promptAddr:
	.word	prompt

