@ readLn2.s
@ Function for solving exercise 24 problem 4; reads an exact number of chars from keyboard input into heap memory of input pointer and returns number of stored chars.
@ 2018-05-29: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	NEWLINE,'\n'
	.equ	NUL,0
	.equ	STDIN,0

@ readLn
	.text
	.align	2
	.global	readLn
	.type	readLn, %function
readLn:
	sub	sp, sp, 32
	str	r1, [sp, 0]
	str	r2, [sp, 4]
	str	r3, [sp, 8]
	str	r4, [sp, 12]
	str	r5, [sp, 16]
	str	r6, [sp, 20]
	str	fp, [sp, 24]
	str	lr, [sp, 28]
	add	fp, sp, 28

	mov	r4, r0		@ store address to heap memory where text string will be stored
	mov	r5, 0		@ counter for number of chars read; returned to calling function
	sub	r2, r1, 1	@ subtract one from max chars to allow inclusion of NUL character; prepare for use as 3rd arg in read
	mov	r6, r2		@ move integer of max chars allowed to r6 for use of r1 in read

	mov	r0, STDIN
	mov	r1, r4
	bl	read

while:
	ldrb	r3, [r4]
	cmp	r3, NEWLINE	@ check if input was shorter than max allowed chars by newline
	beq	done
	cmp	r5, r6		@ check if number of read chars has reached max
	beq	done

	add	r4, r4, 1	@ increment pointer to next available byte of heap memory
	add	r5, r5, 1	@ increment counter of number of bytes read
	b	while
done:
	mov	r3, NUL
	strb	r3, [r4]	@ remove newline input
	mov	r0, r5
	ldr	r1, [sp, 0]
	ldr	r2, [sp, 4]
	ldr	r3, [sp, 8]
	ldr	r4, [sp, 12]
	ldr	r5, [sp, 16]
	ldr	r6, [sp, 20]
	ldr	fp, [sp, 24]
	ldr	lr, [sp, 28]
	add	sp, sp, 32
	bx	lr

