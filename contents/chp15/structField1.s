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
	.file	"structField1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"x: %c, %i, %c\012y: %c, %i, %c\012\000"
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
	mov	r3, #97
	strb	r3, [fp, #-16]	@@ x.aByte = 'a';
	mov	r3, #123
	str	r3, [fp, #-12]	@@ x.anInt = 123;
	mov	r3, #98
	strb	r3, [fp, #-8]	@@ x.anotherByte = 'b';
	mov	r3, #49
	strb	r3, [fp, #-28]	@@ y.aByte = '1';
	mov	r3, #456
	str	r3, [fp, #-24]	@@ y.anInt = 456;
	mov	r3, #50
	strb	r3, [fp, #-20]	@@ y.anotherByte = '2';
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	mov	ip, r3
	ldr	r2, [fp, #-12]	@@ x.anInt
	ldrb	r3, [fp, #-8]	@ zero_extendqisi2
	mov	lr, r3
	ldrb	r3, [fp, #-28]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldrb	r0, [fp, #-20]	@ zero_extendqisi2
	str	r0, [sp, #8]	@@ y.anotherByte
	str	r3, [sp, #4]	@@ y.anInt
	str	r1, [sp]	@@ y.aByte
	mov	r3, lr		@@ x.aByte
	mov	r1, ip		@@ x.anotherByte
	ldr	r0, .L3		@@ formatting string
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
