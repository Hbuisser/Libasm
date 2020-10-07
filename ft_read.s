        global      _ft_write
        extern      __error

_ft_write: 
        xor         rax, rax
        xor         rcx, rcx
        mov         rax, 0x2000003          ;syscall Mac pour read
        syscall

        mov         rcx, rax
        push        rcx
        cmp         rsi, 0
        je          _return
        ;mov		rax, 0x200005c		     ; valeur du syscall fcntl
        push        rsi
        
        mov         rsi, 1                  ; vaeur du define getfd
        syscall

        pop         rsi
        cmp         rax, 0                  ; 0 egal absence d'erreure fd
        jne         _return                 ; si pas egal a 0
        pop         rcx
        mov         rax, rcx
        ret

_return:
        pop         rcx
        xor         rdx, rdx
        mov         rdx, rax
        push        rdx
        call        __error
        pop         rdx
        mov         [rax], rdx
        mov         rax, -1
        ret