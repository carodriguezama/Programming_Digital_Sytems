ORG 0000H
MOV R7,#00H;ONES
MOV R6,#00H;ZEROS
MOV R5,#08H
MOV DPTR,#5000H
MOVX A,@DPTR
BACK: CLR C
RLC A
JC ONES
JNC ZEROES
INC R6
ONES:INC R7
DJNZ R5, BACK
ZEROES: INC R6
DJNZ R5, BACK
HERE: SJMP HERE