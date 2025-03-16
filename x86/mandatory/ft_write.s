bits 64

extern ft_strlen
extern write
global ft_write

ft_write:
	push rbp ; push ca mets rpb dans rsp 
; mets rpb dans la stack pour le reutiliser hors de la fonction
	mov rbp, rsp

	mov rdi, rdi
	call ft_strlen
	mov rdx, rax

	mov rsi, rdi
	call ft_strlen
	mov rdx, rax

	mov rsi, rdi
	mov rdi, 1
	call write

	pop rbp
	ret

section .note.GNU-stack noexec nowrite progbits
