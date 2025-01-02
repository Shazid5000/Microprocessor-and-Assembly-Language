name "16 bit addition with DAA"

CODE SEGMENT
     ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
     ;
     ORG 1000H
     MOV AX,00BCH
     MOV BX,0090H
     ADD AL,BL
     DAA
     
     MOV [2000H],AL
     
     INT 3
     ;
CODE ENDS
     END
     
     