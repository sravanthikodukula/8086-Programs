.MODEL SMALL
.STACK 100
.DATA
ARRAY DB 5H,10H,26H,63H,25H,86H,2FH,33H,10H,35H
SUM DW 0
.CODE
START :
MOV AX,@DATA
MOV DS,AX
MOV CL,10
XOR DI,DI
LEA BX,ARRAY
BACK :
MOV AL,[BX+DI]
MOV AH,00H
ADD SUM,AX
INC DI
DEC CL
JNZ BACK
MOV AH,4CH
INT 21H
END START
END