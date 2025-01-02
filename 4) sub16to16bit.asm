name "16 to 16 subtraction"

CODE SEGMENT
     ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
     ;
     ORG 1000H
     MOV DX,1111H
     MOV AX,1111H
     SUB DX,AX
     
     MOV BX, 4000H
     MOV [BX],DX
     
     INT 3
     ;
CODE ENDS
     END