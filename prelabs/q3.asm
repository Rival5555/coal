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
    message3 db "Result of 3rd question is: ", 0

.code
main PROC
	
	
	; code goes here
     ; 3. (50 + 20) - (15 + 5)
    mov eax, 50
    add eax, 20
    mov ebx, 15
    add ebx, 5
    sub eax, ebx
    mov edx, offset message3
    call WriteString
    call DumpRegs

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
