name "Series Addition"

CODE SEGMENT
    ASSUME CS:CODE, DS:CODE, ES:CODE, SS:CODE

    ORG 1000H
    MOV CX, 14H
    MOV AX, 0
    MOV BX, 1

start_loop:
    ADD AX, BX
    INC BX
    LOOP start_loop

    MOV [0200H], AX

    INT 3

CODE ENDS
    END
