
; https://github.com/afaiyaz006/assembly_8086_lab/blob/main/basic_structure.asm 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;problem-1 in this prob if we take x,y,z as input
;if z==0: print(x+y)
;else if z==1: print(x-y)
.MODEL SMALL ;defines memory model of the code SMALL=code in one segment,data in one segment
.STACK 100h  ;defining stack of 100h size
.DATA        ;data section
;data defination goes here
X DB ?
Y DB ?
Z DB ?
.CODE        ;code section
MAIN PROC    ;main procedure
	;instructions goes here
	MOV AH,1
	INT 21H
	MOV X,AL
	
	MOV AH,1
	INT 21H
	MOV Y,AL
	
	
	MOV AH,1H
	INT 21H
	MOV Z,AL
	
	CMP Z,30H ;hex of ascii value  0
	JE  OPTION_A
    CMP Z,31H ;hex of ascii value  1
    JE  OPTION_B
    JMP END_STATE
    
OPTION_A:
    MOV AH,2
    MOV DL,0
    ADD DL,X
    ADD DL,Y
    INT 21H
    JMP END_STATE
OPTION_B:
    MOV AH,2
    MOV DL,0
    ADD DL,X
    SUB DL,Y
    INT 21H
    JMP END_STATE	
	
	
END_STATE:		
	MOV AH,4CH   ;provide ah function code for exit
	INT 21H	     ;exit and return control to operating system
MAIN ENDP    ;exit main procedure	
;other procedure
END MAIN     ;END directive
;end file


