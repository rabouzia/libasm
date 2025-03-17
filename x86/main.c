/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ramzerk <ramzerk@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/01 20:16:32 by rabouzia          #+#    #+#             */
/*   Updated: 2025/03/16 23:07:07 by ramzerk          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "lst.h"


int		ft_strlen(char *str);
int		ft_strcmp(char *s1, char *s2);
char	*ft_strcpy(char *s1, char *s2);
char	*ft_strcpy(char *dest, char *src);
void 	ft_write(int fd, const void *str, size_t len);
void 	ft_read(int fd, void *str, size_t byte);

int	main(void)
{
	char s1[] = "dddddddd";
	char *s2 = "dsfsdfsdf";
	
	t_list *a = ft_lstnew("hello");
	ft_lstadd_back(&a, ft_lstnew("world"));
	ft_lstadd_back(&a, ft_lstnew("test"));
	ft_lstadd_back(&a, ft_lstnew("for"));
	ft_lstadd_back(&a, ft_lstnew("libasm"));
	
	printf("before asm code\n");
	ft_printlst(a);


	printf("after asm code\n");
	ft_printlst(a);

	
	// printf("%s\n", ft_strcpy(s1, s2));
	// printf("%s\n", strcpy(s1, s2));
	// printf("%d\n", strcmp(s1,s2));
}