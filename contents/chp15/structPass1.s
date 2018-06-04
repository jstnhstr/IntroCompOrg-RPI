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
	.file	"structPass1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"x: %c, %i, %c and y: %c, %i, %c\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	sub	r0, fp, #16	@@ address of x struct
	mov	r3, #98		@@ args to loadStruct
	mov	r2, #123
	mov	r1, #97
	bl	loadStruct
	sub	r0, fp, #28	@@ address of y struct
	mov	r3, #50		@@ args to loadStruct
	mov	r2, #456
	mov	r1, #49
	bl	loadStruct
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	mov	ip, r3
	ldr	r2, [fp, #-12]
	ldrb	r3, [fp, #-8]	@ zero_extendqisi2
	mov	lr, r3
	ldrb	r3, [fp, #-28]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-12]
	ldrb	r0, [fp, #-20]	@ zero_extendqisi2
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	str	r1, [sp]
	mov	r3, lr
	mov	r1, ip
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
