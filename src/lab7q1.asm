INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    byteArray BYTE 10, 20, 30, 40, 50  ; Array of 5 bytes
   
.code
main PROC
    mov esi, OFFSET byteArray  ; Load the address of the array into ESI
    mov ecx, 5                 ; Counter for 5 elements
    
L1:
    mov al, [esi]              ; Move value to AL using indirect addressing
    inc al                     ; Increment value by 1
    mov [esi], al              ; Store back to array
    inc esi                    ; Move to next byte
    loop L1                    ; Decrement ECX and loop if not zero

    call DumpRegs              ; displays registers in console
    exit
main ENDP
END main