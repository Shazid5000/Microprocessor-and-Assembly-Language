CODE SEGMENT
    ASSUME CS:CODE, DS:CODE

    ORG 1000H
    MOV AX, 0      
    MOV CX, 10     
    MOV BX, 3    

start_loop:
    ADD AX, BX    
    ADD BX, 2     
    LOOP start_loop

    MOV [0200H], AX 

    INT 3         

CODE ENDS
    END
    ADD BX, 2      
    LOOP start_loop

    MOV [0200H], AX 

    INT 3         

CODE ENDS
    END