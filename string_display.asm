.MODEL SMALL
.STACK 100h
.DATA
MSG DB 'WORKING!$'
.CODE
MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
   LEA DX,MSG
   MOV AH,9
   INT 21h
MAIN ENDP
END MAIN 
    




