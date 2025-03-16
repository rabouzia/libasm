;**************************************************************************** #
;                                                                             #
;                                                        :::      ::::::::    #
;   ft_strlen.s                                        :+:      :+:    :+:    #
;                                                    +:+ +:+         +:+      #
;   By: rabouzia <rabouzia@student.42.fr>          +#+  +:+       +#+         #
;                                                +#+#+#+#+#+   +#+            #
;   Created: 2024/07/14 11:47:22 by ramzerk           #+;   #+;             #
;   Updated: 2024/10/01 16:36:22 by rabouzia         ##;  ########.fr        #
;                                                                             #
;**************************************************************************** #

bits 64

global ft_strlen

ft_strlen:
	xor rax, rax
	
	loop:
		cmp 	byte [rdi + rax] , 0
		je 		end 
		add 	rax, 1
		jmp 	loop

	end :
		ret

section .note.GNU-stack noexec nowrite progbits
