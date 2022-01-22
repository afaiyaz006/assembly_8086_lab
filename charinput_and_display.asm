TITLE charinput_and_display:single_char_input_and_display
.MODEL SMALL
.STACK 100h
.CODE
MAIN PROC
    ;showing visual prompt
    MOV AH,2   ;sepcifiying function number to AH register 2 means display
    MOV DL,'?' ;storing the char '?' to Data register which will be displayed
    INT 21h    ;invoking BIOS routine.INT means interrupt which is an instruction to specify a BIOS routine which was specified in AH register(2 here)
    ;taking input
    MOV AH,1   ;again specifying function number to accumulator register 1 means taking input
    INT 21h    ;invoking bios routine to input char(1 here specified in the AH register)
    MOV BL,AL  ;Moving data from AL to BL register.Data we have taken input is stored to AL register
    ;displayign it
    MOV AH,2   ;again function number 2 means display
    MOV DL,BL  ;moving data from BL to DL register
    INT 21h    ;invoking BIOS routine to execute display function(2 here specified in the AH register)
MAIN ENDP
END MAIN

    
    
    



