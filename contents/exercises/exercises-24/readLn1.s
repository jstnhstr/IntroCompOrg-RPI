@ readLn1.s
@ Function for solving exercise 24 problem 3; reads user keyboard input into heap memory of input pointer and returns number of stored chars.
@ 2018-05-29: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	NEWLINE,'\n'
	.equ	STDIN,0
	.equ	CAPACITY,64

@ readLn
	.text
	.align	2
	.global	readLn
	.type	readLn, %function
readLn:
	sub	sp, sp, 16
	str	r4, [sp, 0]
	str	r5, [sp, 4]
	str	fp, [sp, 8]
	str	lr, [sp, 12]
	add	fp, sp, 12

	mov	r4, r0		@ store address to heap memory where text string will be stored
	mov	r5, 0		@ counter for number of chars read; returned to calling function

	mov	r0, STDIN
	mov	r1, r4
	mov	r2, CAPACITY
	bl	read

while:
	ldrb	r3, [r4]
	cmp	r3, NEWLINE
	beq	done

	add	r4, r4, 1	@ increment pointer to next available byte of heap memory
	add	r5, r5, 1	@ increment counter of number of bytes read
	b	while
done:
	ldrb	r3, [r4, 1]	@ store '\0' after newline into r3
	strb	r3, [r4]	@ remove newline input
	mov	r0, r5
	ldr	r4, [sp, 0]
	ldr	r5, [sp, 4]
	ldr	fp, [sp, 8]
	ldr	lr, [sp, 12]
	add	sp, sp, 16
	bx	lr

