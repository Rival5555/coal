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
    
    x DWORD 25000        
    y DWORD 15000        
    result DWORD ?       

	; data declarations go here

.code
main PROC
	
	    MOV EAX, x          ; EAX = x
        ADD EAX, y          ; EAX = EAX + y

     
        MOV result, EAX     ; result = EAX

	; code goes here

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
