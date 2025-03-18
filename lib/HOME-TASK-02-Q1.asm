
.386
.model flat,stdcall
.stack 4096


include Irvine32.inc  



.data
    message db "Here is the Result: ", 0



.code
main proc


	mov	al,05H
	mov bl,07H
	add	al,bl		
	movzx eax,al

	mov edx, offset message  
    call WriteString         
    call DumpRegs            
	call writehex

;--> Coding Ends here

	invoke ExitProcess,0
main endp
end main
