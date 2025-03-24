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
	message db "Question 5:", 0

	; code goes here
     MOV AL, 25h
    SUB AL, 25h
    mov edx, OFFSET message
    ;call WriteString
	call DumpRegs ; displays registers in console
    call Crlf

	exit

main ENDP
END main
