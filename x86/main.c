/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rabouzia <rabouzia@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/01 20:16:32 by rabouzia          #+#    #+#             */
/*   Updated: 2024/10/01 21:33:10 by rabouzia         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int	ft_strlen(char *str);
int	ft_strcmp(char *s1, char *s2);

int	main(void)
{
	char *s1 = "dsfsdfsdf";
	char *s2 = "dsfsdfsdf";
	
	printf("%d\n", ft_strcmp(s1,s2));
	// printf("%d\n", strcmp(s1,s2));
}