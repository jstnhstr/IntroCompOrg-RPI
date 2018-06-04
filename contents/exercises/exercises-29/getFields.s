@ getFields.s
@ Prompts user for inputs to store into a theTag struct.
@ input
@	r0 <- address to struct
@ 2018-06-03: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Source code constants
	.equ	lineSize,5
	.equ	locals,8
	.equ	tempWord,-12

@ Constant program data
	.section	.rodata
	.align	2

askForAChar:
	.asciz	"Input a char: "
askForAnInt:
	.asciz	"Input an int: "
askForAnotherChar:
	.asciz	"Input another char: "

@ The program
	.text
	.align	2
	.global	getFields
	.type	getFields, %function
getFields:
	@ allocate stack frame
	sub	sp, sp, 16
	str	r4, [sp, 0]
	str	r5, [sp, 4]
	str	fp, [sp, 8]
	str	lr, [sp, 12]
	add	fp, sp, 12
	sub	sp, sp, locals

	mov	r4, r0		@ r4 = address to struct

	@ get aByte field
	ldr	r0, askForACharAddr
	bl	writeStr
	add	r0, fp, tempWord
	mov	r1, lineSize
	bl	readLn
	ldrb	r5, [fp, tempWord]	@ temporarily store output arg r1 in r5 to avoid use by readLn

	@ get anInt field
	ldr	r0, askForAnIntAddr
	bl	writeStr
	add	r0, fp, tempWord
	mov	r1, lineSize
	bl	readLn
	ldr	r2, [fp, tempWord]

	@ get anotherByte field
	ldr	r0, askForAnotherCharAddr
	bl	writeStr
	add	r0, fp, tempWord
	mov	r1, lineSize
	bl	readLn
	ldrb	r3, [fp, tempWord]

	@ load fields into struct
	mov	r0, r4
	mov	r1, r5		@ restore aByte now that readLn is not needed
	bl	loadStruct

	@ deallocate stack frame
	mov	r0, 0
	add	sp, sp, locals
	ldr	r4, [sp, 0]
	ldr	r5, [sp, 4]
	ldr	fp, [sp, 8]
	ldr	lr, [sp, 12]
	add	sp, sp, 16
	bx	lr

	.align	2
askForACharAddr:
	.word	askForAChar
askForAnIntAddr:
	.word	askForAnInt
askForAnotherCharAddr:
	.word	askForAnotherChar

