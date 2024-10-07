/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rabouzia <rabouzia@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/01 20:16:32 by rabouzia          #+#    #+#             */
/*   Updated: 2024/10/07 21:42:47 by rabouzia         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int		ft_strlen(char *str);
int		ft_strcmp(char *s1, char *s2);
char	*ft_strcpy(char *s1, char *s2);
char	*ft_strcpy(char *dest, char *src);

int	main(void)
{
	char s1[] = "dddddddd";
	char *s2 = "dsfsdfsdf";

	printf("%s\n", ft_strcpy(s1, s2));
	// printf("%s\n", strcpy(s1, s2));
	// printf("%d\n", strcmp(s1,s2));
}