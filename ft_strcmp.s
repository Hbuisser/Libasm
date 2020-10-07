            global  _ft_strcmp

_ft_strcmp:
            xor     rax, rax
            xor     rdx, rdx
            cmp     rdi, 0
            je      _return
            cmp     rsi, 0
            je      _return

_while:
            cmp     byte [rdi + rax], 0
            je      _return
            cmp     byte [rsi + rax], 0
            je      _return
            mov     dl, byte [rdi + rax]
            inc     rax

_return:
            mv      rax, rdi
            rax