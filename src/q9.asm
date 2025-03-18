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
    message9 db "Result of Ninth question is: ", 0

.code
main PROC
	
	
	; code goes here

      ; 9. (80 - 40) + (25 + 15)
    mov eax, 80
    sub eax, 40
    mov ebx, 25
    add ebx, 15
    add eax, ebx
    mov edx, offset message9
    call WriteString
    call DumpRegs

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
