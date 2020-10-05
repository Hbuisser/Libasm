section	.data
		text1 db "What is your name ?",10  ;db for define bytes // 10 for the newline at the end (same as /n)
		text2 db "Hello, " 

section .bss							;pour reserver de l'espace dans la memoire
		name resb 16 					;name correspond au label // resb veut dire reserve un certain nombre de bit
		
section .text
		global		_ft_hello			; for the linker

_ft_hello:
		call 		_printText1
		;call 		_getName
		call 		_printText2
		;call 		_printName

		mov			rax, 0x2000001		;exit
		xor			rdi, rdi
		syscall


_printText1:
		mov			rax, 0x2000004		; system call for write										rip = x
		mov			rdi, 1				; file handle 1 is stdout									rip = x + 1
		mov 		rsi, text1			; address of string to output (in the .data section)		rip = x + 2
		mov			rdx, 20				; number of bytes
		syscall	
		ret								; return to initial call

_printText2:
		mov			rax, 0x2000004		; system call for write
		mov			rdi, 1
		mov 		rsi, text2
		mov			rdx, 7
		syscall							
		ret

_getName:
		mov			rax, 0				; syscall for read (sys_read)
		mov			rdi, 0	
		mov 		rsi, name			; in the bss // space reserved
		mov			rdx, 16
		syscall							
		ret

_printName:
		mov 		rax, 1
