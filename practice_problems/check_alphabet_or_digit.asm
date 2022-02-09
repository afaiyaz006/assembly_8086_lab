;i hate this course,i hate my life
.MODEL SMALL
.STACK 100H
.DATA
MSG DB "Enter character: $"
NEWLINE DB 0AH,0DH,"$"
VAR1 DB ?
ALPHABET DB "THIS IS A ALPHABET.$"
DIGIT DB "THIS IS A DIGIT.",0AH,0DH,"$"
SOMETHING_ELSE DB "THIS IS SOMETHING ELSE.",0AH,0DH,"$"
.CODE
MAIN PROC
    ;load data segment
    MOV AX,@DATA
    MOV DS,AX
    
    ;display message
    MOV AH,9
    LEA DX,MSG
    INT 21H
    ;input
    MOV AH,1
    INT 21H
    ;storing in variable
    MOV VAR1,AL
   
    ;newline
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
    ;branching
;if var1>=0 and var1<=9    
    CMP VAR1,30H
    JL  PRINT_SMTE
    CMP VAR1,39H
    JLE PRINT_DIGIT
;if var1>='a' and var1<='z'    
    CMP VAR1,41H
    JL  PRINT_SMTE
    CMP VAR1,5AH
    JLE PRINT_ALPHABET
;if var1>='A' and var1<='Z'   
    CMP VAR1,61H
    JL  PRINT_SMTE
    CMP VAR1,7AH
    JLE PRINT_ALPHABET
    JMP PRINT_SMTE
    

PRINT_DIGIT:
    MOV AH,9
    LEA DX,DIGIT
    INT 21H
    JMP ENDSTATE
    
PRINT_ALPHABET:
    MOV AH,9
    LEA DX,ALPHABET
    INT 21H
    JMP ENDSTATE

PRINT_SMTE:
    MOV AH,9
    LEA DX,SOMETHING_ELSE
    INT 21H
    JMP ENDSTATE
    

ENDSTATE:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN