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
	.file	"hexToInt1.c"
	.text
	.align	2
	.global	hexToInt
	.syntax unified
	.arm
	.fpu vfp
	.type	hexToInt, %function
hexToInt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]
	strb	r3, [fp, #-9]
	b	.L2
.L4:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4	@@ left shift accumulator
	str	r3, [fp, #-8]
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	cmp	r3, #57		@@ check for alpha
	bls	.L3
	ldrb	r3, [fp, #-9]
	sub	r3, r3, #7	@@ alpha, remove gap
	strb	r3, [fp, #-9]
.L3:
	ldrb	r3, [fp, #-9]
	and	r3, r3, #15	@@ mask off ASCII part
	strb	r3, [fp, #-9]
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	ldr	r2, [fp, #-8]
	add	r3, r2, r3	@@ increment string pointer
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]
	strb	r3, [fp, #-9]
.L2:
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L4
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	hexToInt, .-hexToInt
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
