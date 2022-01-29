.MODEL SMALL
.STACK 100H
.DATA
PARA1 DB 0DH,"***********"
PARA2 DB 0AH,0DH,"***********"
PARA3 DB 0AH,0DH,"***********"
PARA4 DB 0AH,0DH,"***********"
PARA5 DB 0AH,0DH,"***********"
PARA6 DB 0AH,0DH,"***********"
PARA7 DB 0AH,0DH,"***********"
PARA8 DB 0AH,0DH,"***********"
PARA9 DB 0AH,0DH,"***********"
PARA10 DB 0AH,0DH,"***********"
PARA11 DB 0AH,0DH,"***********"
PARA12 DB 0AH,0DH,7H,"$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,PARA1
    INT 21H
    
    
    
MAIN ENDP
END MAIN


