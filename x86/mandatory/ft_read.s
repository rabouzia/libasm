; bits 64

; section .data
; section .text

; extern __errno_location

; global ft_read  // pour le linker

; mov	rax, 0
; syscall
; test rax,rax
; js	.error
; ret
; .error:
; 	neg rax
; 	mov rdx, rax
	