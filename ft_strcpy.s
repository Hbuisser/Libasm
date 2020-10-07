            global    _ft_strcpy

_ft_strcpy:
            xor        rax, rax                     ;mettre a 0, rax = valeur de retour
            xor        rdx, rdx                     ;mettre rdx a 0
            cmp        rdi, 0                       ;cmp = campare, rdi premier registre, la ou le premier arg arrive (rsi 2eme, rdx, ...)
            je        _return
            cmp        rsi, 0                       ;cmp le 2em argument
            je        _return

_while:
            mov        dl, byte [rsi + rax]         ;(char)rsi[rax] 
            mov        byte [rdi + rax], dl         ;inverser les deux
            cmp        dl , 0
            je        _return
            inc        rax
            jmp        _while

_return:
            mov        rax, rdi                     ;mettre rdi sur le rax pour le return
            ret