.MODEL SMALL
.STACK 100
.DATA
COUNT DW 0008H
RES DW 0001H
.CODE
START :
MOV AX,@DATA
MOV DS,AX
MOV CX,COUNT
MOV SI,OFFSET RES
MOV AL,00H
MOV BL,01H
MOV [SI],AL
INC SI
MOV [SI],BL
INC SI
UP :
MOV AL,[SI-2]
MOV BL,[SI-1]
ADD AL,BL
MOV [SI],AL
INC SI
LOOP UP
MOV AH,4CH
INT 21H
END START
END