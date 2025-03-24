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
    message db "Question 3: Add With Carry In 16-bit Addition", 0
    
   
.code
main PROC
	
    MOV AX, 0FFFFh
    ADD AX, 1

	; code goes here
    mov edx, OFFSET message
	call DumpRegs ; displays registers in console
    call Crlf
	exit

main ENDP
END main
