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
    message8 db "Result of eighth question is: ", 0

.code
main PROC
	
	
	; code goes here

     ; 8. (30 + 50) - (20 + 10)
    mov eax, 30
    add eax, 50
    mov ebx, 20
    add ebx, 10
    sub eax, ebx
    mov edx, offset message8
    call WriteString
    call DumpRegs


	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
