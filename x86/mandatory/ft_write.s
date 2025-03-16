bits 64

global ft_write


ft_write:
	push rpb ; push ca mets rpb dans rsp 
	; mets rpb dans la stack pour le reutiliser hors de la fonction
	mov rbp, rsp
	; 