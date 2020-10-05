            global    _ft_strcpy

_ft_strcpy:
            xor        rax, rax                     ;mettre a 0, rax = valeur de retour
            xor        rdx, rdx                     ;mettre rdx a 0 // pk ??????????? 
            cmp        rdi, 0                       ;cmp = campare, rdi premier registre (rsi 2eme, rdx, ...) // Comment il sait que c'est le string ?? Pas de parametres
            je        _return
            cmp        rsi, 0                       ;cmp le 2em, pk ???????
            je        _return

_while:
            mov        dl, byte [rsi + rax]         ;char *rsi 
            mov        byte [rdi + rax], dl         ;inverser les deux en gros
            cmp        dl , 0
            je        _return
            inc        rax
            jmp        _while

_return:
            mov        rax, rdi                     ;mettre rdi sur le rax pour le return
            ret