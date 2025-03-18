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
	
	    ; (32-bit) Reverse Subtraction
    mov eax, 3000h  
    mov ebx, 1000h  
    mov ecx, 0500h  
    sub ebx, eax    
    sub ebx, ecx    
    mov eax, ebx    

    ; Displaying Output
    mov edx, offset message
    call WriteString        

    call WriteHex            

    call DumpRegs            


	; code goes here

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
