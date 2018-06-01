@ toUpper.s
@ Converts all alpha characters to uppercase.
@ Calling sequence:
@	r0 <- address of string to be written
@	bl toUpper
@ returns number of characters written
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Useful source code constants
	.equ	upperMask,0x5f
	.equ	NUL,0

@ The code
	.text
	.align	2
	.global	toUpper
	.type	toUpper, %function
toUpper:
	sub	sp, sp, 16		@ space for saving regs
	str	r4, [sp, 0]		@ save r4
	str	r5, [sp, 4]		@	r5
	str	fp, [sp, 8]		@	fp
	str	lr, [sp, 12]		@	lr
	add	fp, sp, 12		@ set our frame pointer

	mov	r4, r0			@ r4 = string pointer
	mov	r5, 0			@ r5 = count

whileLoop:
	ldrb	r3, [r4]		@ get a char
	cmp	r3, NUL			@ end of string?
	beq	allDone			@ yes, all done

	and	r3, r3, upperMask	@ convert to uppercase
	strb	r3, [r4]		@ udpate string

	add	r4, r4, 1		@ increment pointer var
	add	r5, r5, 1		@ count++
	b	whileLoop		@ back to top
allDone:
	mov	r0, r5			@ return count;
	ldr	r4, [sp, 0]		@ restore r4
	ldr	r5, [sp, 4]		@	r5
	ldr	fp, [sp, 8]		@	fp
	ldr	lr, [sp, 12]		@	lr
	add	sp, sp, 16		@ restore sp
	bx	lr			@ return

