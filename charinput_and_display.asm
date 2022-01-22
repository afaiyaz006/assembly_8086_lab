.MODEL SMALL
.CODE
MAIN PROC
    ;showing visual promt
    MOV AH,2
    MOV DL,'?'
    INT 21h 
    ;taking input
    MOV AH,1
    INT 21h
    MOV BL,AL
    ;displayign it
    MOV AH,2
    MOV DL,BL
    INT 21h
MAIN ENDP
END MAIN

    
    
    



