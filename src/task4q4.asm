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
    a WORD 30000
    b DWORD 40000
    result DWORD ?
   
.code
main PROC
	
     movzx eax, a
     add eax, b
     mov result, eax
    

	; code goes here
    call WriteDec
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
