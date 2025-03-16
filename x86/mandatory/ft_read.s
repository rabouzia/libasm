bits 64

global ft_read  

ft_read: 
	mov	rax, 0
	syscall
	test rax,rax
	js	.error
	ret
.error:
	neg rax
	mov rdx, rax
	