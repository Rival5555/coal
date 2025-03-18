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
    message7 db "Result of seventh question is: ", 0

.code
main PROC
	
	
	; code goes here

     ; 7. (60 - 20) + (30 + 10)
    mov eax, 60
    sub eax, 20
    mov ebx, 30
    add ebx, 10
    add eax, ebx
    mov edx, offset message7
    call WriteString
    call DumpRegs


	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
