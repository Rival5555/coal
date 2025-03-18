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
    message db "Result  is: ", 0
	; data declarations go here

.code
main PROC
	
	    ; (8-bit) Subtract Two Registers
    mov al, 50h  
    mov cl, 12h  
    sub al, cl   

    ; Displaying Output
    mov edx, offset message
    call WriteString         

    movzx eax, al            
    call WriteHex            

    call DumpRegs            

	; code goes here

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
