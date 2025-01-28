
.global _ft_strlen

_ft_strlen:
		CBZ X0, end
		MOV	X1, X0
		MOV	X2, #0
loop:
		LDRB W3, [X1], #1
		CBZ W3, end
		ADD X2, X2, #1
		B loop
end:
		MOV X0, X2
		RET
