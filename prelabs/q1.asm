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
    message1 db "Result of first question is: ", 0
	

.code
main PROC

	
	; code goes here
	
	;call DumpRegs ; displays registers in console
  ; 1. (10 + 20) - (5 + 3)
    mov eax, 10
    add eax, 20
    mov ebx, 5
    add ebx, 3
    sub eax, ebx
    mov edx, offset message1
    call WriteString
    call DumpRegs
	exit

main ENDP
END main
