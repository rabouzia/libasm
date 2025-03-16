bits 64

global ft_write

ft_write:
	mov rax, 1
	syscall
	ret
	test rax,rax
	js	.error
	ret
.error:
	neg rax
	mov rdx, rax




