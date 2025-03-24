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
    message db "Question 06:", 0
   
.code
main PROC
	call WriteString

	; code goes here
    MOV AL, 10h
    SUB AL, 20h
    
    mov edx, OFFSET message
    call Crlf
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
