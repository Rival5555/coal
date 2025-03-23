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
        a WORD 500
        b DWORD 10000
        p DWORD 2500
        result DWORD ?

   
.code
main PROC
	
    mov eax, b
    movzx ecx, a
    sub eax, ecx
    sub eax, p
    mov result, eax

	; code goes here
    call WriteDec
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
