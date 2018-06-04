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
	.file	"fraction.cc"
	.text
	.align	2
	.global	_ZN8fractionC2Ev
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN8fractionC2Ev, %function
_ZN8fractionC2Ev:
	.fnstart
.LFB1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r2, #1
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8fractionC2Ev, .-_ZN8fractionC2Ev
	.global	_ZN8fractionC1Ev
	.set	_ZN8fractionC1Ev,_ZN8fractionC2Ev
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Enter numerator: \000"
	.align	2
.LC1:
	.ascii	"Enter denominator: \000"
	.text
	.align	2
	.global	_ZN8fraction3getEv
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN8fraction3getEv, %function
_ZN8fraction3getEv:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #48
	sub	sp, sp, #48
	str	r0, [fp, #-48]
	ldr	r3, .L4
	sub	ip, fp, #24
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	strh	r3, [ip]	@ movhi
	ldr	r3, .L4+4
	sub	ip, fp, #44
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	sub	r3, fp, #24
	mov	r0, r3
	bl	writeStr
	bl	getDecInt
	mov	r2, r0
	ldr	r3, [fp, #-48]
	str	r2, [r3]
	sub	r3, fp, #44
	mov	r0, r3
	bl	writeStr
	bl	getDecInt
	mov	r2, r0
	ldr	r3, [fp, #-48]
	str	r2, [r3, #4]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	.LC1
	.fnend
	.size	_ZN8fraction3getEv, .-_ZN8fraction3getEv
	.align	2
	.global	_ZN8fraction7displayEv
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN8fraction7displayEv, %function
_ZN8fraction7displayEv:
	.fnstart
.LFB4:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r3, #47
	strh	r3, [fp, #-8]	@ movhi
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	putDecInt
	sub	r3, fp, #8
	mov	r0, r3
	bl	writeStr
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	putDecInt
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.fnend
	.size	_ZN8fraction7displayEv, .-_ZN8fraction7displayEv
	.align	2
	.global	_ZN8fraction3addEi
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN8fraction3addEi, %function
_ZN8fraction3addEi:
	.fnstart
.LFB5:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	ldr	r1, [fp, #-12]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8fraction3addEi, .-_ZN8fraction3addEi
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
