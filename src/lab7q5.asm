INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    sourceArray BYTE 10, 20, 30, 40, 50    ; Source array of 5 bytes
    targetArray BYTE 5 DUP(0)              ; Target array of 5 bytes, initialized to 0
   
.code
main PROC
    mov esi, OFFSET sourceArray           ; ESI points to start of source array
    mov edi, OFFSET targetArray + 4       ; EDI points to the end of target array
    mov ecx, 5                            ; Counter for 5 elements
    
reverseLoop:
    mov al, [esi]                         ; Get byte from source array
    mov [edi], al                         ; Store byte to target array
    inc esi                               ; Move source pointer forward
    dec edi                               ; Move target pointer backward
    loop reverseLoop                      ; Decrement ECX and loop if not zero

    call DumpRegs                         ; displays registers in console
    exit
main ENDP
END main