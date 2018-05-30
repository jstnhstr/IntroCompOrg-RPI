@ writeStr.s
@ receives an address to char array as an input argument; returns number of bytes written as output.
@ 2018-05-28: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	NUL,0
	.equ	STDOUT,1

	.text
	.align	2
	.global	writeStr
	.type	writeStr, %function
writeStr:
	sub	sp, sp, 16	@ allocate space for stack frame
	str	fp, [sp, 0]
	str	lr, [sp, 4]
	str	r4, [sp, 8]
	str	r5, [sp, 12]
	add	fp, sp, 12	@ set frame pointer
	mov	r4, r0		@ move input address to r4
	mov	r5, 0		@ counter for displayed chars; returned to calling function
while:
	ldrb	r3, [r4]	@ load char from input address
	cmp	r3, NUL		@ check if end of string
	beq	done		@ if so, move to done:
	mov	r0, STDOUT	@ otherwise, print next char to display
	mov	r1, r4
	mov	r2, 1
	bl	write
	add	r4, r4, 1	@ increment input pointer
	add	r5, r5, 1	@ increment counter for output result
	b	while
done:
	mov	r0, r5		@ set r0 to total characters displayed
	ldr	fp, [sp, 0]	@ restore register values
	ldr	lr, [sp, 4]
	ldr	r4, [sp, 8]
	ldr	r5, [sp, 12]
	add	sp, sp, 16	@ deallocate stack frame
	bx	lr		@ return

