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
    message5 db "Result of fifth question is: ", 0


.code
main PROC
	
	
	; code goes here

     ; 5. (40 + 60) - (20 + 15)
    mov eax, 40
    add eax, 60
    mov ebx, 20
    add ebx, 15
    sub eax, ebx
    mov edx, offset message5
    call WriteString
    call DumpRegs


	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
