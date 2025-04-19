Mov A, #00H

Back: 	MOV P2, A
		INC A
		ACALL DELAY
		SJMP BACK
DELAY: MOV TMOD, #01H
	   Mov TL0, #0CH
	   Mov TH0, #0FEH
	   Mov TCON, #10H
	   WAIT: JNB TF0, WAIT
	   CLR TR0
	   CLR TF0
	   RET
