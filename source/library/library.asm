        section .text
bits 64


        global fooBar


fooBar:

        mov     rax, 011101b ; 29 in Decimal



        %ifdef DEBUG
        add     rax, 2
        %endif

        ret