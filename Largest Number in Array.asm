.MODEL SMALL
.STACK 100
.DATA
ARRAY DB 25H,55H,32H,45H,67H,99H,07H,19H,77H,88H
MAX DB 00H
.CODE
START :
MOV AX,@DATA
MOV DS,AX
MOV CL,0AH
XOR DI,DI
LEA BX,ARRAY
MOV AL,MAX
BACK :
CMP AL,[BX+DI]
JNC SKIP
MOV AL,[BX+DI]
SKIP :
INC DI
DEC CL
JNZ BACK
MOV MAX,AL
MOV AH,4CH
INT 21H
END START
END