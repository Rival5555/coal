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
    a word 100
    b word 50
    result word ?
    umsg byte "result = ",0

	; data declarations go here

.code
main PROC
	
	mov Ax, a
    add Ax, b
    sub Ax, b
    mov result, Ax
    mov edx, OFFSET umsg
    call WriteString
    movzx eax,result
    call WriteDec

	; code goes here

	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
