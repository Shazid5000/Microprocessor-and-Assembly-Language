CODE SEGMENT
     ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
     ;
     ORG 1000H
     MOV AL, 88H
     MOV DL, 44H
     DIV DL
     INT 3
     ;
CODE ENDS
     END
