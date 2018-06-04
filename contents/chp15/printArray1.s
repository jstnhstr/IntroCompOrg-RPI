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
	.file	"printArray1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%i\012\000"
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
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	mov	r4, #0		@@ index = 0;
	b	.L2
.L3:
	lsl	r3, r4, #2	@@ 4 * index
	sub	r2, fp, #12	@@ address of end of array
	add	r3, r2, r3	@@ index-th element beyond end
	str	r4, [r3, #-40]	@@ minus length of array
	add	r4, r4, #1	@@ index++
.L2:
	cmp	r4, #9		@@ check for end
	ble	.L3
	mov	r4, #0
	b	.L4
.L5:
	lsl	r3, r4, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r3, [r3, #-40]
	mov	r1, r3
	ldr	r0, .L7
	bl	printf
	add	r4, r4, #1
.L4:
	cmp	r4, #9
	ble	.L5
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L8:
	.align	2
.L7:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
