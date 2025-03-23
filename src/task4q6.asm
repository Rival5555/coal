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
    m WORD -32000
    n DWORD 100000
    result DWORD ?
   
.code
main PROC
	movsx eax, m
    neg eax
    add eax, n
    mov result, eax

	; code goes here
    call WriteDec
    call Crlf
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
