name "divide 16 bit value by 16 bit"

CODE SEGMENT
     ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
     ;
     ORG 1000H
     MOV AX, 1141H
     MOV BX, 0011H
     DIV BX
     INT 3
     ;
CODE ENDS
     END
