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
        message db "Result is: ", 0
	; data declarations go here

.code
main PROC


	xor eax,eax
	mov	AX,8000H
	mov BX,3F20H
	sub AX,BX
	

	mov edx, offset message  
    call WriteString         
    call DumpRegs            

	
	; code goes here

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
