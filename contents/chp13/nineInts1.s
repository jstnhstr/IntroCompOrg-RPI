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
	.file	"nineInts1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"The sum is %i\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #64
	mov	r3, #1
	str	r3, [fp, #-8]
	mov	r3, #2
	str	r3, [fp, #-12]
	mov	r3, #3
	str	r3, [fp, #-16]
	mov	r3, #4
	str	r3, [fp, #-20]
	mov	r3, #5
	str	r3, [fp, #-24]
	mov	r3, #6
	str	r3, [fp, #-28]
	mov	r3, #7
	str	r3, [fp, #-32]
	mov	r3, #8
	str	r3, [fp, #-36]
	mov	r3, #9
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	str	r3, [sp, #16]
	ldr	r3, [fp, #-36]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-32]
	str	r3, [sp, #8]
	ldr	r3, [fp, #-28]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	sumNine
	str	r0, [fp, #-44]
	ldr	r1, [fp, #-44]
	ldr	r0, .L3
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L4:
	.align	2
.L3:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
