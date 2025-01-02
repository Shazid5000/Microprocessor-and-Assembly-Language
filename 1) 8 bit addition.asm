name "8 bit addition"

CODE SEGMENT
     ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
     ;
     ORG 1000H
     MOV AX,01H
     MOV BX,02H
     ADD AX,BX
     INT 3
     ;
CODE ENDS
     END