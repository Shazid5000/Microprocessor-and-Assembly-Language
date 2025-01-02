name "divide 32 bit value by 16 bit"

CODE SEGMENT
    ASSUME CS:CODE, DS:CODE, ES:CODE, SS:CODE

    ORG 1000H
    MOV SI, 1100H
    MOV AX, [SI]
    MOV DX, [SI+2]
    MOV BX, [SI+4]
    DIV BX

    MOV [SI+6], AX
    MOV [SI+8], DX

    INT 3

CODE ENDS
    END
