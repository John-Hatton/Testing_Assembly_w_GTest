        extern  printf
        global  fooBar, println


        section .data



msg:    db "Hallo Welt!", 10, 0


fmt:    db "%s", 0
fmtln:  db "%s", 10, 0
fmtd:   db "%d", 0
fmtdln: db "%d", 10, 0


        section .text
bits 64





%macro printLn 1

        push    rbp

        mov     rdi, fmtln
        mov     rsi, %1
        xor     rax, rax
        call    printf

        pop     rbp

%endmacro


println:

        xor     rbx, rbx
        mov     rbx, rdi

        printLn rbx

        ret


fooBar:

        mov     rax, 11101b

        ;println fmtln, msg

        %ifdef DEBUG
        add     rax, 2
        %endif

        ret