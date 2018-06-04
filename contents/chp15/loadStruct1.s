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
	.file	"loadStruct1.c"
	.text
	.align	2
	.global	loadStruct
	.syntax unified
	.arm
	.fpu vfp
	.type	loadStruct, %function
loadStruct:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r2, [fp, #-16]
	mov	r2, r3
	mov	r3, r1
	strb	r3, [fp, #-9]
	mov	r3, r2
	strb	r3, [fp, #-10]
	ldr	r3, [fp, #-8]
	ldrb	r2, [fp, #-9]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	ldrb	r2, [fp, #-10]
	strb	r2, [r3, #8]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	loadStruct, .-loadStruct
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
