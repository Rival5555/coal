INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    wordArray WORD 100, 200, 300, 400, 500  ; Array of 5 words
   
.code
main PROC
    mov esi, OFFSET wordArray  ; Load the address of the array into ESI
    mov ecx, 5                 ; Counter for 5 elements
    mov ax, 0                  ; Initialize sum to zero
    
sumLoop:
    add ax, [esi]              ; Add current element to sum
    add esi, 2                 ; Move to next word (2 bytes)
    loop sumLoop               ; Decrement ECX and loop if not zero
    
    ; Result is in AX register

    call DumpRegs              ; displays registers in console
    exit
main ENDP
END main