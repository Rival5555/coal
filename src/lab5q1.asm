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
     
 message db "Question 1: Add Two 8-bit Numbers ", 0
   
.code
main PROC
	;call WriteString
    ;call Crlf
    
    MOV AL, 50h
    ADD AL, 30h


	; code goes here
    mov edx, OFFSET message
	call DumpRegs ; displays registers in console
    call Crlf
	exit

main ENDP
END main
