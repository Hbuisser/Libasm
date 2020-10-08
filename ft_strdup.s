        global      _ft_strdup
        extern      _ft_strlen
        extern      _ft_strcpy
        extern      _malloc

_ft_strdup:
        xor         rax, rax
        xor         rsi, rsi
        cmp         rdi, 0
        je          _return

_while:
        push        rdi
        call        _ft_strlen
        mov         rdi, rax
        inc         rdi

        call        _malloc
        pop         rsi                         ; ???
        mov         rdi, rax
        call        _ft_strcpy
        ret

_return:
        mov         rax, -1
        ret
