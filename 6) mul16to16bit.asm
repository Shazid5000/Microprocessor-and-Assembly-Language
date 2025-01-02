name "16-bit to 16-bit multiplication"

CODE SEGMENT
    ASSUME CS:CODE, DS:CODE, ES:CODE, SS:CODE

    ORG 1000H
    MOV AX, 1234H
    MOV BX, 5678H
    MUL BX

    MOV CX, 4000H
    MOV [CX], AX
    MOV [CX+2], DX

    INT 3

CODE ENDS
    END
 DX  
 

    INT 3

CODE ENDS
    END
    INT 3

CODE ENDS
    END
