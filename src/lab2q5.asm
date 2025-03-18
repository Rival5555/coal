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
	
	    ; (16-bit) Subtract Three Registers
    mov ax, 9000h  
    mov bx, 2000h  
    mov cx, 1000h  
    sub ax, bx     
    sub ax, cx     

    ; Displaying Output
    mov edx, offset message
    call WriteString         

    movzx eax, ax            
    call WriteHex            

    call DumpRegs            

	; code goes here

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
