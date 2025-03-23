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
    p WORD 12345
    q WORD 20000
    result DWORD ?
   
.code
main PROC
	movzx eax, p
    movzx ecx, q
    add eax, ecx
    mov result, eax

	; code goes here
    call WriteDec
    call Crlf
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
