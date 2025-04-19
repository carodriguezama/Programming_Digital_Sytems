org 0000h
	mov p1, #00h
	mov p2, #00h
	here:
	jb p1.0, LOOP
	clr p2.0
	sjmp here
		
	Loop: SETB P2.0
	CALL DELAY
	clr P2.0
	CALL DELAY
	
	DELAY: Mov TMOD, #01H
	Mov TL0, #0A0H
	Mov TH0, #015H
	Mov TCON,#10H
	WAIT: JNB TF0, WAIT
	CLR TR0
	CLR TF0
	RET
	
	end
		
	