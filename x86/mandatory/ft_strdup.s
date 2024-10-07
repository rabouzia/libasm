bits  64

global ft_strdup

ft_strdup:  
	;rdi = str
	call 	ft_strlen   ;rax = ft_strlen(str)
	mov		rdx, rdi	;save str
	mov		rdi , rax	;rdi = ft_strlen(str)
	;malloc(rdi) => malloc(ft_strlen(str))
	call 	malloc
	;rax = malloc(ft_strlen(str))
	mov 	rsi , rdx ;rsi = str
	mov		rdi , rax ;rdi = malloc(ft_strlen(str))
	;ft_strcpy(malloc(ft_strlen(str)), str)
	call 	ft_strcpy
	;rax = ft_strcpy(malloc(ft_strlen(str)), str)
	ret
	;return(ft_strcpy(malloc(ft_strlen(str)), str))

	return (ft_strcpy(malloc(strlen(str)), str));

