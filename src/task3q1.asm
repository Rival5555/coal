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
    a byte 100
    b byte 50
    result byte ?
    umsg byte "result= ",0

	; data declarations go here

.code
main PROC
	mov AL, a
    add AL, b
    sub AL, b
    mov result, AL
    mov edx, OFFSET umsg
    call WriteString
    movzx eax,result
    call WriteDec

	
	; code goes here

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
