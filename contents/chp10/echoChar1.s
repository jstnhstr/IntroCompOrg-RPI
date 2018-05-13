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
	.file	"echoChar1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Enter one character: \000"
	.align	2
.LC1:
	.ascii	"You entered: \000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r2, #21
	ldr	r1, .L3
	mov	r0, #1
	bl	write
	sub	r3, fp, #5
	mov	r2, #1
	mov	r1, r3
	mov	r0, #0
	bl	read
	mov	r2, #13
	ldr	r1, .L3+4
	mov	r0, #1
	bl	write
	sub	r3, fp, #5
	mov	r2, #1
	mov	r1, r3
	mov	r0, #1
	bl	write
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
