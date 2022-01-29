.MODEL SMALL
.STACK 100h
.DATA
MSG DB 'WORKING!$'  ; Double byte message to display
MSG1 DB 0DH          ; (0DH(13)->Carriage Return) moves the cursor to the begining of the line
MSG2 DB 0AH,'CODE','$' ;(0AH(10)->Line Feed) moves the cursor to the next line 
MSG3 DB 0AH,0DH,'A quick brown fox jumps over the lazy dog$';0AH moves to the newline 0DH moves the cursor at the begining just like \n
MSG4 DB 0AH,0DH,'I probably talk to myself more than I talk to anyone.$' ;another one
.CODE
MAIN PROC
   ;initializing the data segment
   MOV AX,@DATA  
   MOV DS,AX 
   
   ;displaying msg
   ;transfering data to Data Register from MSG vairable
   LEA DX,MSG ;LEA means Load Effective Adress it copies the offset adress of the source to destination
   ;displaying the message
   MOV AH,9 ;function number 9 means display string
   INT 21H ;Starting BIOS interruption for function 9
   
   ;displaying msg1
   ;msg1 will display msg2 along with it because $ marks the ending and it is in the msg2 so INT 21H will go on and print msg2
   LEA DX,MSG1
   MOV AH,9
   INT 21H
   
   ;displaying msg3
   LEA DX,MSG3
   MOV AH,9
   INT 21H
   
   ;displaying msg4
   LEA DX,MSG4
   MOV AH,9
   INT 21H
   
MAIN ENDP
END MAIN 
    




