INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    wordArray WORD 10, 20, 30, 40, 50, 60  ; Array of 6 words
    constant  WORD 5                        ; Constant to add
   
.code
main PROC
    mov ecx, 6                 ; Counter for 6 elements
    mov esi, 0                 ; Start with index 0
    
modifyLoop:
    mov ax, wordArray[esi]     ; Use indexed operand to get value
    add ax, constant           ; Add constant value
    mov wordArray[esi], ax     ; Store the result back
    add esi, 2                 ; Move to next word (2 bytes)
    loop modifyLoop            ; Decrement ECX and loop if not zero

    call DumpRegs              ; displays registers in console
    exit
main ENDP
END main