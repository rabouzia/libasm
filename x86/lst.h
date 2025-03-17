#pragma once

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct s_list 
{

	char 	*content;
	struct s_list 	*next;

}	t_list;

t_list	*ft_lstnew(char *content)
{
	t_list	*res;

	res = malloc(sizeof(t_list));
	if (!res)
		return (NULL);
	res->content = content;
	res->next = NULL;
	return (res);
}

t_list	*ft_lstlast(t_list *lst)
{
	if (!lst)
		return (0);
	while (lst->next != NULL)
		lst = lst->next;
	return (lst);
}

void	ft_lstadd_back(t_list **lst, t_list *new)
{
	if (!lst || !new)
		return ;
	if (*lst)
		ft_lstlast(*lst)->next = new;
	else
		*lst = new;
}

void ft_printlst(t_list *a)
{
	while(a)
	{
		printf("%s -> \n", a->content);
		a = a->next;
	}
}