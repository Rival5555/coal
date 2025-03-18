; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example
include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
; (10+20)-(5+3)
	mov	eax,10				
	mov ebx,20
	add eax,ebx

	mov ebx,5
	mov ecx,3
	add ebx,ecx

	sub eax,ebx

		call DumpRegs


	


	invoke ExitProcess,0
main endp
end main