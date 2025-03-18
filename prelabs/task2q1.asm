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
    
	; data declarations go here
    message db "Here is the Result: ", 0

.code
main PROC
	mov	al,05H
	mov bl,07H
	add	al,bl		
	movzx eax,al

	mov edx, offset message  
    call WriteString         
    call DumpRegs            
	call writehex
	
	; code goes here

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main

