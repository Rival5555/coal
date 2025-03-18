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
    message4 db "Result of fourth question is: ", 0

.code
main PROC
	
	
	; code goes here

     ; 4. (100 - 30) + (25 + 5)
    mov eax, 100
    sub eax, 30
    mov ebx, 25
    add ebx, 5
    add eax, ebx
    mov edx, offset message4
    call WriteString
    call DumpRegs


	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
