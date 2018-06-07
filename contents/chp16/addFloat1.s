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
	.file	"addFloat1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%f + %f = %f\012\000"
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
	sub	sp, sp, #32
	ldr	r3, .L3
	str	r3, [fp, #-8]	@ float
	ldr	r3, .L3+4
	str	r3, [fp, #-12]	@ float
	vldr.32	s14, [fp, #-8]	@@ load x into s14 reg
	vldr.32	s15, [fp, #-12]	@@ load y into s15 reg
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-16]
	vldr.32	s15, [fp, #-8]
	vcvt.f64.f32	d5, s15	@@ convert x to double
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15	@@ convert y to double
	vldr.32	s13, [fp, #-16]
	vcvt.f64.f32	d6, s13	@@ convert z to double
	vstr.64	d6, [sp, #8]	@@ pass z on stack
	vstr.64	d7, [sp]	@@ pass y on stack
	vmov	r2, r3, d5	@@ pass x in r2/r3
	ldr	r0, .L3+8	@@ pointer to format string
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L4:
	.align	2
.L3:
	.word	1067282596
	.word	1083304837
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
