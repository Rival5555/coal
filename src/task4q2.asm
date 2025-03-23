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

    p WORD 100
    q DWORD 5000
    result DWORD ?

    
   
.code
main PROC
	    movzx eax, p
    mov ebx, q
    add eax, ebx
    mov result, eax


	; code goes here
    CALL WriteDec
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
