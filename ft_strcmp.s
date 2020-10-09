            global	_ft_strcmp

_ft_strcmp:
	        xor	    rax, rax
	        xor	    rcx, rcx
	        xor	    rdx, rdx

_while:
	        mov	    dl, byte [rsi + rcx]            ; s2[rcx]
	        cmp	    byte [rdi + rcx], dl            ; s1[rcx] = s2[rcx] ?
	        jne	    _compare
	        cmp	    dl, 0
	        je	    _compare
	        cmp	    byte [rdi + rcx], 0             ; s1[rcx]
	        je	    _compare
	        inc	    rcx
	        jmp	    _while

_compare:
	        cmp	    byte [rdi + rcx], dl            ; s2 par rapport a s1
	        jl	    _inferior
	        jg	    _superior
            ret

_inferior:
	        mov	    rax, -1
	        ret

_superior:
	        mov	    rax, 1
	        ret


