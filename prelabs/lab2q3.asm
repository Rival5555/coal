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
        message db "Result: ", 
	; data declarations go here

.code
main PROC
	
	    ; (32-bit) Cumulative Addition
    mov eax, 00000001h  
    mov ebx, 00000002h  
    mov ecx, 00000003h  
    mov edx, 00000004h  
    add eax, ebx        
    add eax, ecx        
    add eax, edx       

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
