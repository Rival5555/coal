TITLE

; Name: 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    
   
.code
main PROC
	

	; code goes here
     MOV AL, 50h
    call DumpRegs
    
    ADD AL, 30h
    call DumpRegs
    
    SUB AL, 90h
    call DumpRegs

	

	exit

main ENDP
END main
