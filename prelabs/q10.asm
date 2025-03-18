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
    message10 db "Result of Tenth question is: ", 0

.code
main PROC
	
	
	; code goes here

     ; 10. (90 + 10) - (30 + 20)
    mov eax, 90
    add eax, 10
    mov ebx, 30
    add ebx, 20
    sub eax, ebx
    mov edx, offset message10
    call WriteString
    call DumpRegs


	;all DumpRegs ; displays registers in console

	exit

main ENDP
END main
