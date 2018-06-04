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
	.file	"incFraction.cc"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	sub	r3, fp, #12		@@ address of x object
	mov	r0, r3
	bl	_ZN8fractionC1Ev	@@ fraction x;
	sub	r3, fp, #12
	mov	r0, r3
	bl	_ZN8fraction3getEv	@@ x.get();
	sub	r3, fp, #12
	mov	r1, #1
	mov	r0, r3
	bl	_ZN8fraction3addEi	@@ x.add(1);
	sub	r3, fp, #12
	mov	r0, r3
	bl	_ZN8fraction7displayEv	@@ x.display();
	bl	newLine
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
