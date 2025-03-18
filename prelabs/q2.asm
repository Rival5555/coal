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
    message2 db "Result of second question is: ", 0

.code
main PROC
	
	
	; code goes here
     ; 2. (15 + 25) + (30 - 10)
    mov eax, 15
    add eax, 25
    mov ebx, 30
    sub ebx, 10
    add eax, ebx
    mov edx, offset message2
    call WriteString
    call DumpRegs


	

	exit

main ENDP
END main
