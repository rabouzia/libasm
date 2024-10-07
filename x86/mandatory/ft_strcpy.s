bits 64

global ft_strcpy

ft_strcpy:
	xor 		rcx , rcx
	test 		rdi , rdi
	jz 			end

	loop:
		mov  	dl, [rsi + rcx]
		mov  	[rdi + rcx], dl
		cmp 	byte [rsi + rcx] , 0
		je		end
		add 	rcx, 1
		jmp 	loop
	
	end:
		mov rax, rdi
		ret