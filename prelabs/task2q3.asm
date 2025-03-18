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
    message db "Here is the Result: ", 0
	; data declarations go here

.code
main PROC
	
	xor eax,eax
	mov EAX,00005000H
	mov EBX,00002000H
	sub EAX,EBX
	mov ECX,00001000H
	mov EDX,00000500H
	sub ECX,EDX
	

	mov edx, offset message  
    call WriteString         
    call DumpRegs            
	call writehex

	; code goes here

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
