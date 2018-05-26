@ if-else.s
@ NOT A FUNCTION. Shows if-else structure.
@ 2017-09-29: Bob Plantz

	-------

	ldrb	r3, [fp, #-response]	@ load response
	cmp	r3, 'y'			@ was it 'y'?
	bne	discard			@ no, discard changes

	( else block )

endThen:
	b	endElse			@ branch over else block

discard:
	
	( then block )

endElse:

	-------

