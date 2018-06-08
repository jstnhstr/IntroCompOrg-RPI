@ helloWorld4.s
@ Hello World program, using system call.
@ 2017-09-29: Bob Plantz

@ Define my Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Useful source code constants
	.equ	STDOUT,1
	.equ	write,4		@ supervisor call numbers are in
				@ /usr/include/arm-linux-gnueabihf/asm/unistd.h

@ Constant program data
	.section	.rodata
	.align	2
helloMsg:
	.asciz	"Hello, World!\n"
	.equ	helloLngth,.-helloMsg

@ Program code
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 16	@ space for saving regs
				@ (keeping 8-byte sp align)
	str	r7, [sp, 4]	@ save r7
	str	fp, [sp, 8]	@	fp
	str	lr, [sp, 12]	@	lr
	add	fp, sp, 12	@ set our frame pointer

	mov	r0, STDOUT	@ file number to write to
	ldr	r1, helloMsgAddr	@ pointer to message
	mov	r2, helloLngth	@ number of bytes to write
	mov	r7, write	@ system call 'write'
	svc	0		@ write the message

	mov	r0, 0		@ return 0;
	ldr	r7, [sp, 4]	@ restore r7
	str	fp, [sp, 8]	@	fp
	str	lr, [sp, 12]	@	lr
	add	sp, sp, 16	@	sp
	bx	lr		@ return

	.align	2
helloMsgAddr:
	.word	helloMsg

