;**************************************************************************** #
;                                                                             #
;                                                        :::      ::::::::    #
;   ft_strcmp.s                                        :+:      :+:    :+:    #
;                                                    +:+ +:+         +:+      #
;   By: rabouzia <rabouzia@student.42.fr>          +#+  +:+       +#+         #
;                                                +#+#+#+#+#+   +#+            #
;   Created: 2024/07/14 11:47:22 by ramzerk           #+;   #+;             #
;   Updated: 2024/10/01 20:22:22 by rabouzia         ##;  ########.fr        #
;                                                                             #
;**************************************************************************** #

bits 64		

global ft_strcmp

ft_strcmp:
	xor rax ,rax
	test rdi, rdi
	jz caca
	test rsi, rsi
	jz caca
	loop:
		mov byte dl ,[rsi + rax]
		mov byte cl, [rdi + rax]
		test dl, dl
		jz end
		test cl, cl
		jz end
		cmp cl , dl
		jne end
		inc rax
		jmp loop
	end:
		sub cl ,dl
		mov al, cl
		ret 
	caca:
		ret



