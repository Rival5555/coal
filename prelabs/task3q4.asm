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
    n dword 10000
    m dword 200
    o dword 150
    result dword ?
    umsg byte "result = :",0

	; data declarations go here

.code
main PROC
	
	    mov eax, n
    add eax, m
    sub eax, o
    mov result, eax
    mov edx, OFFSET umsg
    call WriteString
    mov eax,result
    call writedec

	; code goes here

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
