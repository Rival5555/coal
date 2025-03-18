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
    message6 db "Result of sixth question is: ", 0

.code
main PROC
	
	
	; code goes here

      ; 6. (25 + 35) - (10 + 5)
    mov eax, 25
    add eax, 35
    mov ebx, 10
    add ebx, 5
    sub eax, ebx
    mov edx, offset message6
    call WriteString
    call DumpRegs
    


	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
