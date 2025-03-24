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
    
   
.code
main PROC
	

	; code goes here
    MOV AX, 5
    SUB AX, 10


	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
