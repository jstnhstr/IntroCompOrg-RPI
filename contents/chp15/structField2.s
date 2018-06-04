@ structField2.s
@ Allocates two structs and assigns a value to each field
@ in each struct, then displays the values.
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Constants for assembler
	.equ	aByte,0		@ offsests within
	.equ	anInt,4		@	each
	.equ	anotherByte,8	@	struct
	.equ	y,-36		@ y struct
	.equ	x,-24		@ x struct
	.equ	locals,24	@ space for the structs

@ Constant program data
	.section	.rodata
	.align	2
displayX:
	.asciz	"x fields:\n"
displayY:
	.asciz	"y fields:\n"
dispAByte:
	.asciz	"	aByte = "
dispAnInt:
	.asciz	"	anInt = "
dispAnotherByte:
	.asciz	"	anotherByte = "

@ The program
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 16	@ space for saving regs
				@ (keeping 8-byte sp align)
	str	r4, [sp, 4]	@ save r4
	str	fp, [sp, 8]	@	fp
	str	lr, [sp, 12]	@	lr
	add	fp, sp, 12	@ set our frame pointer
	sub	sp, sp, locals	@ for the structs

@ fill the x struct
	add	r4, fp, x	@ address of x struct
	mov	r1, 'a'
	strb	r1, [r4, aByte]	@ x.aByte = 'a';
	mov	r1, 123
	str	r1, [r4, anInt]	@ x.anInt = 123;
	mov	r1, 'b'
	str	r1, [r4, anotherByte]	@ x.anotherByte = 'b';

@ fill the y struct
	add	r4, fp, y	@ address of y struct
	mov	r1, '1'
	strb	r1, [r4, aByte]	@ y.aByte = '1';
	mov	r1, 456
	str	r1, [r4, anInt]	@ y.anInt = 456;
	mov	r1, '2'
	strb	r1, [r4, anotherByte]	@ y.anotherByte = '2';

@ display x struct
	add	r4, fp, x	@ address of x struct
	ldr	r0, displayXAddr
	bl	writeStr
	ldr	r0, dispAByteAddr	@ display aByte
	bl	writeStr
	ldrb	r0, [r4, aByte]
	bl	putChar
	bl	newLine
	ldr	r0, dispAnIntAddr	@ display anInt
	bl	writeStr
	ldr	r0, [r4, anInt]
	bl	putDecInt
	bl	newLine
	ldr	r0, dispAnotherByteAddr	@ display anotherByte
	bl	writeStr
	ldrb	r0, [r4, anotherByte]
	bl	putChar
	bl	newLine

@ display x struct
	add	r4, fp, y	@ address of y struct
	ldr	r0, displayYAddr
	bl	writeStr
	ldr	r0, dispAByteAddr	@ display aByte
	bl	writeStr
	ldrb	r0, [r4, aByte]
	bl	putChar
	bl	newLine
	ldr	r0, dispAnIntAddr	@ display anInt
	bl	writeStr
	ldr	r0, [r4, anInt]
	bl	putDecInt
	bl	newLine
	ldr	r0, dispAnotherByteAddr	@ display anotherByte
	bl	writeStr
	ldrb	r0, [r4, anotherByte]
	bl	putChar
	bl	newLine

	mov	r0, 0		@ return 0;
	add	sp, sp, locals	@ deallocate local var
	ldr	r4, [sp, 4]	@ restore r4
	ldr	fp, [sp, 8]	@	fp
	ldr	lr, [sp, 12]	@	lr
	add	sp, sp, 16	@	sp
	bx	lr		@ return

	.align	2
@ addresses of messages
displayXAddr:
	.word	displayX
displayYAddr:
	.word	displayY
dispAByteAddr:
	.word	dispAByte
dispAnIntAddr:
	.word	dispAnInt
dispAnotherByteAddr:
	.word	dispAnotherByte

