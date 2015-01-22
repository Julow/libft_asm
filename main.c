/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/21 13:40:42 by jaguillo          #+#    #+#             */
/*   Updated: 2015/01/22 00:28:00 by jaguillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>
#include <ctype.h>
#include <string.h>

#define TEST(a,b,c)	(test(#a, a(c), b(c), c))

static void		test(char *str, int ret1, int ret2, char c)
{
	if (ret1 != ret2)
		printf("\n%s fail ! %d vs %d for %c\n", str, ret1, ret2, c);
}

int				main(int argc, char **argv)
{
	const char		*str = "test test test test";
	int				i;

	printf("Testing ft_isdigit... ");
	i = -1;
	while (++i < 256)
		TEST(ft_isdigit, !!isdigit, i);
	printf("done\n\n");
	printf("Testing ft_isalpha... ");
	i = -1;
	while (++i < 256)
		TEST(ft_isalpha, !!isalpha, i);
	printf("done\n\n");
	printf("Testing ft_isascii... ");
	i = -1;
	while (++i < 256)
		TEST(ft_isascii, !!isascii, i);
	printf("done\n\n");
	printf("Testing ft_isalnum... ");
	i = -1;
	while (++i < 256)
		TEST(ft_isalnum, !!isalnum, i);
	printf("done\n\n");
	printf("Testing ft_isprint... ");
	i = -1;
	while (++i < 256)
		TEST(ft_isprint, !!isprint, i);
	printf("done\n\n");
	printf("Testing ft_toupper... ");
	i = -1;
	while (++i < 256)
		TEST(ft_toupper, toupper, i);
	printf("done\n\n");
	printf("Testing ft_tolower... ");
	i = -1;
	while (++i < 256)
		TEST(ft_tolower, tolower, i);
	printf("done\n\n");
	printf("Testing ft_strlen... ");
	if (ft_strlen(str) != strlen(str))
		printf("\n ft_strlen fail ! %u vs %zu for %s\n", ft_strlen(str),
			strlen(str), str);
	printf("done\n\n");
	(void)argc;
	(void)argv;
	return (0);
}
