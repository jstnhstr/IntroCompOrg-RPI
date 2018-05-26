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
	.file	"yesNo1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Save changes? \000"
	.align	2
.LC1:
	.ascii	"Changes saved.\012\000"
	.align	2
.LC2:
	.ascii	"Changes discarded.\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	ldr	r3, .L11
	str	r3, [fp, #-8]
	ldr	r3, .L11+4
	str	r3, [fp, #-12]
	ldr	r3, .L11+8
	str	r3, [fp, #-16]
	b	.L2
.L3:
	mov	r2, #1
	ldr	r1, [fp, #-8]
	mov	r0, #1
	bl	write
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	sub	r3, fp, #17
	mov	r2, #1
	mov	r1, r3
	mov	r0, #0
	bl	read
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	cmp	r3, #121
	bne	.L8
	b	.L5
.L6:
	mov	r2, #1
	ldr	r1, [fp, #-12]
	mov	r0, #1
	bl	write
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L5:
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L6
	b	.L7
.L9:
	mov	r2, #1
	ldr	r1, [fp, #-16]
	mov	r0, #1
	bl	write
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L8:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L9
.L7:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
