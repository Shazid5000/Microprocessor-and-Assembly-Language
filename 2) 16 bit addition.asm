name "16 bit addition"

CODE SEGMENT
     ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
     ;
     ORG 1000H
     MOV AX,1234H
     MOV BX,5678H
     ADD AX,BX
     INT 3
     ;
CODE ENDS
     END