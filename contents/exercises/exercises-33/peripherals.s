@ peripherals.s
@ Prints I/O memory address
@ 2018-06-07: Justin Hester

@ Define Raspberry Pi
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified		@ modern syntax

@ Source code constants
	.section	.rodata
	.align	2
display:
	.asciz	"Peripheral address = %#08x\n"

@ The program
	.text
	.align
	.global	main
	.type	main, %function
main:
	sub	sp, sp, 16
	str	r0, [sp, 0]
	str	r1, [sp, 4]
	str	fp, [sp, 8]
	str	lr, [sp, 12]
	add	fp, sp, 12

	bl	bcm_host_get_peripheral_address
	mov	r1, r0
	ldr	r0, displayAddr
	bl	printf

	ldr	r0, [sp, 0]
	ldr	r1, [sp, 4]
	ldr	fp, [sp, 8]
	ldr	lr, [sp, 12]
	add	sp, sp, 16
	bx	lr

displayAddr:
	.word	display

