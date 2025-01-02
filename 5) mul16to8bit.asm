name "16-bit to 8-bit multiplication"

CODE SEGMENT
    ASSUME CS:CODE, DS:CODE, ES:CODE, SS:CODE

    ORG 1000H
    MOV AX, 1234H
    MOV BL, 12H
    MUL BL

    MOV BX, 4000H
    MOV [BX], AL

    INT 3

CODE ENDS
    END

    INT 3

CODE ENDS
    END
D
