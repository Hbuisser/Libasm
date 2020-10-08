        global      _ft_read
        extern      ___error

_ft_read: 
        xor         rax, rax
        xor         rcx, rcx

        mov         rax, 0x2000003          ;rdi(fd), rsi(buff), rdx(nbytes)
        syscall

        mov         rcx, rax
        push        rcx                     ;rcx is used by the kernel and its value is destroyed
        
        cmp         rsi, 0
        je          _return

        mov	        rax, 0x200005c           ;valeur du syscall fcntl
        push        rsi
        mov         rsi, 1                   ;valeur du define getfd
        syscall
        pop         rsi
        cmp         rax, 0                   ;0 egal absence d'erreure fd
        jne         _return                  ;si pas egal a 0

        pop         rcx
        mov         rax, rcx
        ret

_return:
        pop         rcx
        xor         rdx, rdx
        mov         rdx, rax
        push        rdx
        call        ___error
        pop         rdx
        mov         [rax], rdx
        mov         rax, -1
        ret
