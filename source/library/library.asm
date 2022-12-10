        extern  printf
        global  fooBar, println


        section .data



msg:    db "Hallo Welt!", 10, 0
debmsg:    db "Debug Mode is On!!!", 10, 0


fmt:    db "%s", 0
fmtln:  db "%s", 10, 0
fmtd:   db "%d", 0
fmtdln: db "%d", 10, 0


        section .text
bits 64





%macro _println 1

        mov     rdi, fmtln
        mov     rsi, %1
        xor     rax, rax
        call    printf

%endmacro


println:

        mov     rbx, rdi
        _println rbx

        ret

fooBar:

        mov     rax, 11101b



        %ifdef DEBUG
        _println     debmsg
        %endif

        ret