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
    message db "Question 4:Subtract 2 8-bits numbers", 0
   
.code
main PROC
	

	; code goes here
     MOV AL, 64h
    SUB AL, 20h
    
    mov edx, OFFSET message
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
