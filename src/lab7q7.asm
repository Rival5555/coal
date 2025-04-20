INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    myVar WORD 1234h
   
.code
main PROC
    mov esi, OFFSET myVar
    inc WORD PTR [esi]    ; Add WORD PTR to specify that we're accessing a word
    
    call DumpRegs         ; displays registers in console
    exit
main ENDP
END main