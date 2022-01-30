.MODEL SMALL ;defines memory model of the code SMALL=code in one segment,data in one segment
.STACK 100h  ;defining stack of 100h size
.DATA        ;data section
;data defination goes here
.CODE        ;code section
MAIN PROC    ;main procedure
;instructions goes here
MAIN ENDP
;other procedure
END MAIN     ;END directive
;end file
