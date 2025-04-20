INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    dwordArray DWORD 100, 200, 300, 400, 500, 600  ; Array of 6 DWORDs
   
.code
main PROC
    mov ecx, 3                 ; Counter for 3 elements (every second of 6)
    mov esi, 0                 ; Start with index 0
    
scaleLoop:
    mov eax, dwordArray[esi*8] ; Scale index by 8 (2 DWORDs) to get every second element
    add eax, 2                 ; Add 2 to the value
    mov dwordArray[esi*8], eax ; Store the result back
    inc esi                    ; Move to next index
    loop scaleLoop             ; Decrement ECX and loop if not zero

    call DumpRegs              ; displays registers in console
    exit
main ENDP
END main