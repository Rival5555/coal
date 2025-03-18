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
        message db "Result OF Adding 8-bit registers is: ", 0
	; data declarations go here

.code
main PROC
	
	    ; (8-bit) Add Two Registers
    mov ah, 12h  
    mov bh, 34h  
    add ah, bh   

    ; Displaying Output
    mov edx, offset message
    call WriteString       

    movzx eax, ah            
    call WriteHex            

    call DumpRegs          

	; code goes here

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
