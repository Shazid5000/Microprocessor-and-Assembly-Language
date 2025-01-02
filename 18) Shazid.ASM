;*****************************************
;     MDA-Win8086 EXPERIMENT PROGRAM    *
;     FILENAME  : 1.ASM
;     PROCESSOR : I8086
;     DOT MATRIX TEST
;*****************************************

CODE    SEGMENT
    ASSUME  CS:CODE, DS:CODE, ES:CODE, SS:CODE

    PPIC_C  EQU 1EH ; control register
    PPIC    EQU 1CH ; c port
    PPIB    EQU 1AH
    PPIA    EQU 18H

    ORG 1000H
    MOV AL, 10000000B
    OUT PPIC_C, AL

    MOV AL, 11111111B
    OUT PPIA, AL

L1:  MOV SI, OFFSET FONT_S   ; Start with FONT_T
     MOV BL,  6              ; Total number of letters (S, H, A, Z, I, D)

L3:  MOV BH, 30              ; Display time
L2:  PUSH SI
      CALL SCAN
      POP  SI
      DEC BH
      JNZ L2                  ; Repeat for the current letter

      ADD SI, 8               ; Move to the next font
      DEC BL
      JNZ L3                  ; Continue if more letters are left
      JMP L1                  ; After showing all letters, repeat

SCAN    PROC NEAR
    MOV AH, 00000001B
SCAN1: MOV AL, BYTE PTR CS:[SI]
    OUT PPIB, AL

    MOV AL, AH
    OUT PPIC, AL
    CALL TIMER
    INC SI
    CLC
    ROL AH, 1
    JNC SCAN1
    RET
SCAN    ENDP

TIMER: MOV CX, 300
TIMER1: NOP
        NOP
        NOP
        NOP
        LOOP TIMER1
        RET



FONT_S:  DB 10000001B
         DB 11111101B
         DB 11111101B
         DB 11000001B
         DB 10111111B
         DB 10111111B
         DB 11000001B
         DB 11111111B

FONT_H:  DB 00111100B
         DB 00111100B
         DB 00111100B
         DB 00000000B
         DB 00000000B
         DB 00111100B
         DB 00111100B
         DB 00111100B
         
FONT_A:  DB 11000011B
         DB 10111101B
         DB 10111101B
         DB 10111101B
         DB 10000001B
         DB 10111101B
         DB 10111101B
         DB 10111101B

FONT_Z:  DB 00000000B
         DB 10111111B
         DB 11011111B
         DB 11101111B
         DB 11110111B
         DB 11111011B
         DB 11111101B
         DB 00000000B

FONT_I:  DB 10000000B
         DB 11110111B
         DB 11110111B
         DB 11110111B
         DB 11110111B
         DB 11110111B
         DB 10000000B
         DB 11111111B

FONT_D:  DB 11000000B
         DB 10111101B
         DB 10111101B
         DB 10111101B
         DB 10111101B
         DB 10111101B
         DB 11000000B
         DB 11111111B

CODE ENDS
END

