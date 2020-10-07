            global  _ft_strcmp

_ft_strcmp:
            xor     rax, rax
            xor     rdx, rdx
            cmp     rdi, 0
            je      _return
            cmp     rsi, 0
            je      _return

_while:
            mov     dl, byte [rdi + rax]
            cmp     byte [rsi + rax], 0
            jne      _return                        ;si les deux string ne sont pas egal, je passe au return 
            cmp     dl, 0
            je      _return
            cmp     byte [rsi + rax], 0
            je      _return
            inc     rax
            jmp     _while

_return:
            mov     rdi, [rdi + rax]                ;mettre le pointeur dans la valeur du registre
            and     rdi, 255                        ;enleve tout ce qui est en dehors du premier byte de rdi pour eviter l'overflow
            mov     rsi, [rsi + rax]
            and     rsi, 255
            mov     rax, rdi
            sub     rax, rsi
            ret