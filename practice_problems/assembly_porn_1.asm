.MODEL SMALL
.STACK 100H
.DATA
X DB ?
Y DB ?
Z DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
   
    MOV AH,1
    INT 21H
    MOV X,AL
    
    MOV AH,1
    INT 21H
    MOV Y,AL
    
    MOV AH,1
    INT 21H
    MOV Z,AL
    
    
    MOV AL,X
    MOV BL,Y
    CMP Z,30H
    JE  MIN
    JMP MAX 
           
MIN:
    CMP AL,BL
    JLE PRINT_X
    JG  PRINT_Y
 
MAX:
    CMP AL,BL
    JGE PRINT_X
    JL  PRINT_Y
    
PRINT_X:
    MOV AH,2
    MOV DL,AL
    INT 21H
    JMP END_
    
    

PRINT_Y:
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP END_
    
    
    
    
END_:
MAIN ENDP
END MAIN