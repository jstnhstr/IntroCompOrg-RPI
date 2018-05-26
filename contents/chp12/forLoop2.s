@ forLoop2.s
@ "Hello world" one char at a time.
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Useful source code constants
	.equ	STDOUT,1

@ Constant program data
	.section	.rodata
	.align	2
theString:
	.asciz	"Hello World\n"
	.equ	strngLngth,.-theString
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
	ldr	r5, theStringAddr	@ address of string
	mov	r4, 0		@ i = 0;
for:
	mov	r0, STDOUT	@ write to screen
	mov	r1, r5		@ current char
	mov	r2, 1		@ one byte
	bl	write
	add	r5, r5, 1	@ next char in array
	add	r4, r4, 1	@ i++;
	cmp	r4, strngLngth	@ all chars?
	ble	for		@ no, keep going

	mov	r0, 0		@ yes, return 0;
	ldr	r4, [sp, 0]	@ restore r4
	ldr	r5, [sp, 4]	@	r5
	ldr	fp, [sp, 8]	@	fp
	ldr	lr, [sp, 12]	@	lr
	add	sp, sp, 16	@ restore sp
	bx	lr		@ return

	.align	2
theStringAddr:
	.word	theString
