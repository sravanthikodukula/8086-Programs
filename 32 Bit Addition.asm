.MODEL SMALL
.STACK 100
.DATA
NO1 DD 1122FBCDH
NO2 DD 1111FFFFH
RESULT DD ?
CARRY DB 00H
.CODE
START :
MOV AX,@DATA
MOV DS,AX
MOV AX,WORD PTR NO1
ADD AX,WORD PTR NO2
MOV CX,AX
MOV WORD PTR RESULT,AX
MOV BX,OFFSET [NO1]
MOV AX,WORD PTR[BX+2]
MOV BX,OFFSET [NO2]
ADC AX,WORD PTR [BX+2]
MOV DX,AX
MOV WORD PTR [RESULT+2],AX
MOV AH,4CH
INT 21H
END START
END