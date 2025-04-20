INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    byteArray  BYTE  10, 20, 30, 40, 50             ; Array of bytes
    wordArray  WORD  100, 200, 300, 400, 500        ; Array of words
    dwordArray DWORD 1000, 2000, 3000, 4000, 5000   ; Array of dwords
   
.code
main PROC
    ; Process byte array
    mov esi, 0
    mov al, byteArray[esi]     ; Access first byte
    add al, 5                  ; Add 5 to it
    mov byteArray[esi], al     ; Store back
    
    ; Process word array with scaling
    mov esi, 1                 ; Index 1
    mov ax, wordArray[esi*2]   ; Scale by 2 bytes (word size), get second element
    sub ax, 50                 ; Subtract 50
    mov wordArray[esi*2], ax   ; Store back
    
    ; Process dword array with scaling
    mov esi, 2                 ; Index 2
    mov eax, dwordArray[esi*4] ; Scale by 4 bytes (dword size), get third element
    add eax, 100               ; Add 100
    mov dwordArray[esi*4], eax ; Store back

    call DumpRegs              ; displays registers in console
    exit
main ENDP
END main