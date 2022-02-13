.MODEL SMALL ;defines memory model of the code SMALL=code in one segment,data in one segment
.STACK 100H  ;defining stack of 100h size
.DATA        ;data section

;5 variables
NUMD DB 48
NUMH DB 33H
CHAR DB 'A'
MSG  DB 'HELLO$'
UNKNOWN DB ?
.CODE        ;code section
MAIN PROC    ;main procedure
	;instructions goes here
    ;INITIALIZING DATA SEGMENT
    MOV AX,@DATA
    MOV DS,AX
        
    ;TAKING INPUT AND STORING IT TO 'UNKNOWN'
    MOV AH,1
    INT 21H
    MOV UNKNOWN,AL
    
    MOV CL,0H
    MOV AH,2
    
    JMP PRINT_NEWLINE
    ;PRINTING 5 VARIABLES

PRINT_NUMD:    
    MOV DL,NUMD
    INT 21H
    INC CL    
    JMP PRINT_NEWLINE

PRINT_NUMH:
    MOV DL,NUMH
    INT 21H          
    INC CL
    JMP PRINT_NEWLINE


PRINT_CHAR:
    MOV DL,CHAR
    INT 21H
    INC CL
    JMP PRINT_NEWLINE

PRINT_MSG:
    MOV AH,9
    MOV DX,OFFSET MSG
    INT 21H
    MOV AH,2
    INC CL
    JMP PRINT_NEWLINE
    
PRINT_UNKNOWN:
    MOV DL,UNKNOWN
    INT 21H
    INC CL
    JMP PRINT_NEWLINE    

PRINT_NEWLINE:
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    CMP CL,0H
    JE  PRINT_NUMD
    CMP CL,1H
    JE  PRINT_NUMH
    CMP CL,2H
    JE  PRINT_CHAR
    CMP CL,3H
    JE  PRINT_MSG
    CMP CL,4H
    JE  PRINT_UNKNOWN 

    MOV AH,4CH   ;4CH function code for exit
	INT 21H	     ;exit and return control to operating system
MAIN ENDP    ;exit main procedure	
;other procedure
END MAIN     ;END directive
;end file


