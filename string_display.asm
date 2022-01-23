.MODEL SMALL
.STACK 100h
.DATA
MSG DB 'WORKING!$'  ; Double byte message to display
.CODE
MAIN PROC
   ;initializing the data segment
   MOV AX,@DATA  
   MOV DS,AX
   ;transfering data to Data Register from MSG vairable
   LEA DX,MSG ;LEA means Load Effective Adress it copies the offset adress of the source to destination
   ;displaying the message
   MOV AH,9 ;function number 9 means display string
   INT 21h ;Starting BIOS interruption for function 9
MAIN ENDP
END MAIN 
    




