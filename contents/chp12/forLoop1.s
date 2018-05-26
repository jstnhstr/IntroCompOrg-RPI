	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"forLoop1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Hello World.\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	ldr	r5, .L5		@@ address of string
	mov	r4, #0		@@ i = 0'
	b	.L2
.L3:
	mov	r2, #1		@@ one byte
	mov	r1, r5		@@ address of char
	mov	r0, #1		@@ STDOUT_FILENO
	bl	write
	add	r5, r5, #1	@@ increment pointer variable
	add	r4, r4, #1	@@ i++
.L2:
	cmp	r4, #13		@@ i = 13?
	ble	.L3		@@ <=, continue loop
	mov	r3, #0		@@ yes, return 0;
	mov	r0, r3
	pop	{r4, r5, fp, pc}
.L6:
	.align	2
.L5:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
