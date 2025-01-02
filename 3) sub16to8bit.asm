name "16-bit to 8-bit subtraction"

CODE SEGMENT
    ASSUME CS:CODE, DS:CODE, ES:CODE, SS:CODE

    ORG 1000H
    MOV AX, 1234H
    MOV BL, 34H
    SUB AL, BL

    MOV BX, 4000H
    MOV [BX], AX

    INT 3

CODE ENDS
    END
