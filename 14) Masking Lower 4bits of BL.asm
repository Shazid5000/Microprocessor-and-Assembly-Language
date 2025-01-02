name "Masking"

CODE SEGMENT
     ASSUME CS:CODE,DS:CODE,ES:CODE,SS:CODE
     ORG 2000H
     MOV AX, 2000H
     MOV DS, AX

     MOV AX, 1234H
     MOV BX, 5678H

     AND BL, 0FH
     MOV [2000H], BL

     AND BH, 0FH
     MOV [2001H], BH

     MOV [2002H], AL
    
     MOV [2003H], AH

     INT 3
CODE ENDS
     END
