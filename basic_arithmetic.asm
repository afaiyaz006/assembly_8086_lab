.MODEL SMALL
.STACK 100H
.DATA
A DB 1
B DB 2
C DB 3
.CODE
MAIN PROC
    ;initialize data
    MOV AX,@DATA
    MOV DS,AX
    MOV AX,0
    
    ;A=B-A
    MOV AL,B
    SUB AL,A
    MOV A,AL
    
    
    ;A=-(A+1)
    MOV AL,0
    MOV AL,A
    INC AL
    NEG AL
    MOV A,AL
    
    ;-(-A)
    NEG A
    
    ;C=A+B
    MOV AL,0
    ADD AL,A
    ADD AL,B
    MOV C,AL
    
    ;B=3*B+7
    MOV AL,0
    MOV AL,B*3
    ADD AL,7
    MOV B,AL
    
    
    ;A=B-A-1
    MOV AL,0
    MOV AL,B
    SUB AL,A
    MOV A,AL
    DEC A
    
MAIN ENDP
END MAIN
    

