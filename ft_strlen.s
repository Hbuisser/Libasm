	        global _ft_strlen

_ft_strlen:
	        xor		rax, rax					;mettre a 0, rax = valeur de retour
	        cmp		rdi, 0						;cmp = campare, rdi premier parametre (rsi 2eme, rdx, ...)
	        je		_return						;je = jump equal, si compare est egal

_while:
	        cmp		byte [rdi + rax], 0			;rdi[rax] ? 0 ((char)rdi[rax]) => [] pour traiter les Registers comme des pointeurs
	        je		_return
	        inc		rax
	        jmp		_while

_return:
			ret									;return rax