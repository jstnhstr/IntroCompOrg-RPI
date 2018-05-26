@ helloLoop2.s
@ "Hello world" one char at a time.
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Useful source code constants
	.equ	STDOUT,1
	.equ	NUL,0

@ Constant program data
	.section	.rodata
	.align	2
theString:
	.asciz	"Hello World.\n"
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
	add	fp, sp, 12	@ set out frame pointer

	ldr	r4, theStringAddr	@ use r4 as pointer variable
whileLoop:
	ldrb	r3, [r4]	@ get a char
	cmp	r3, NUL		@ end of string?
	beq	allDone		@ yes, all done

	mov	r0, STDOUT	@ no, write to string
	mov	r1, r4		@ address of current char
	mov	r2, #1		@ write 1 byte
	bl	write

	add	r4, r4, 1	@ increment pointer var
	b	whileLoop
allDone:
	mov	r0, 0		@ return 0;
	ldr	r4, [sp, 4]	@ restore r4
	ldr	fp, [sp, 8]	@	fp
	ldr	lr, [sp, 12]	@	lr
	add	sp, sp, 16	@ restore sp
	bx	lr		@ return

theStringAddr:
	.word	theString

