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
    message db "Question 2: Add Two 8-bit Numbers With Overflow", 0
   
.code
main PROC
	

	; code goes here
     MOV AL, 90h
    ADD AL, 80h
      
      mov edx, OFFSET message
      
    
	call DumpRegs ; displays registers in console
    call Crlf
	exit

main ENDP
END main
