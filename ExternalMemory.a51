org 0000h
	MAIN:
	MOV 50H, #025H
	MOV DPTR, #6000H
	MOV R5, 50H
	MOV A, R5
	MOVX @DPTR, A

	HERE: SJMP HERE