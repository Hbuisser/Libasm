        global      _ft_read
        extern      ___error

_ft_read: 
        xor         rax, rax
        xor         rcx, rcx

        mov         rax, 0x2000003          ;syscall pour read // rdi(fd), rsi(buff), rdx(nbytes)
        syscall

        mov         rcx, rax
        push        rcx                     ;caller-save register // Decrement rsp by the size of the operand, then store rcx in [rsp]
        
        cmp         rsi, 0                  ;si buff = 0
        je          _return

        mov	    rax, 0x200005c           ;valeur du syscall fcntl
        push        rsi
        mov         rsi, 1                   ;valeur du define getfd
        syscall

        pop         rsi                      ;restore caller-save register
        cmp         rax, 0                   ;0 egal absence d'erreure fd
        jne         _return                  ;si pas egal a 0

        pop         rcx                      ;Move [rsp] into rcx, then increment rsp by the size of the operand
        mov         rax, rcx
        ret

_return:
        pop         rcx                      ;restore caller-save register
        xor         rdx, rdx
        mov         rdx, rax
        push        rdx
        call        ___error
        pop         rdx
        mov         [rax], rdx
        mov         rax, -1
        ret
