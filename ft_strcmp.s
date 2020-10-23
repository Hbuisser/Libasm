    global _ft_strcmp

_ft_strcmp:
	xor		rax, rax
	xor 	rdx, rdx
	cmp		rdi, 0							;receive s1
	je		_return
	cmp		rsi, 0							;receive s2
	je		_return

_while:
	mov		dl,[rdi + rax]			;rdi[rax] // s1[0]
	cmp		[rsi + rax], dl			;rsi[rax] // s2[0]
	jne		_return
	cmp		dl, 0
	je		_return
	cmp		byte [rsi + rax], 0
	je		_return
	inc		rax
	jmp		_while

_return:
	mov		rdi, [rdi + rax]
	and		rdi, 255				;ET BINAIRE donne le résultat 1 si les 2 opérandes sont 1 et donne 0 dans les autres cas et cela sur chacun des bits de l'opérande
	mov		rsi, [rsi + rax]
	and		rsi, 255
	mov		rax, rdi
	sub		rax, rsi				;soustrait le deuxième opérande (opérande source) du premier opérande (opérande cible) et entrepose le résultat dans l'opérande cible
	ret
