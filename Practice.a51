org 0000h
	MAIN: MOV R6, #05H
	MOV R0, #040H
	MOV A, #0ABH
	BACK:MOV @R0, A
	INC R0
	DJNZ R6, BACK
	HERE: SJMP HERE
	