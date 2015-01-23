/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/21 13:40:42 by jaguillo          #+#    #+#             */
/*   Updated: 2015/01/23 12:03:42 by jaguillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

#define TEST(a,b,c)	(test(#a, a(c), b(c), c))

static void		test(char *str, int ret1, int ret2, char c)
{
	if (ret1 != ret2)
		printf("\n%s fail ! %d vs %d for %c\n", str, ret1, ret2, c);
}

int				main(int argc, char **argv)
{
	char			*str;
	int				i;

	str = ft_strdup("test test test testtest test");
	printf("Testing ft_isdigit...\n");
	i = -1;
	while (++i < 1024)
		TEST(ft_isdigit, !!isdigit, i);
	printf("done\n");
	printf("Testing ft_isalpha...\n");
	i = -1;
	while (++i < 1024)
		TEST(ft_isalpha, !!isalpha, i);
	printf("done\n");
	printf("Testing ft_isascii...\n");
	i = -1;
	while (++i < 1024)
		TEST(ft_isascii, !!isascii, i);
	printf("done\n");
	printf("Testing ft_isalnum...\n");
	i = -1;
	while (++i < 1024)
		TEST(ft_isalnum, !!isalnum, i);
	printf("done\n");
	printf("Testing ft_isprint...\n");
	i = -1;
	while (++i < 1024)
		TEST(ft_isprint, !!isprint, i);
	printf("done\n");
	printf("Testing ft_isspace...\n");
	i = -1;
	while (++i < 1024)
		TEST(ft_isspace, !!isspace, i);
	printf("done\n");
	printf("Testing ft_toupper...\n");
	i = -1;
	while (++i < 1024)
		TEST(ft_toupper, toupper, i);
	printf("done\n");
	printf("Testing ft_tolower...\n");
	i = -1;
	while (++i < 1024)
		TEST(ft_tolower, tolower, i);
	printf("done\n");
	printf("Testing ft_strlen...\n");
	if (argc > 1)
		printf("ft_strlen(\"%s\") :: %u\n", argv[1], ft_strlen(argv[1]));
	i = -1;
	while (++i < ft_strlen(str))
		if (ft_strlen(str + i) != strlen(str + i))
			printf("\n ft_strlen fail ! %u vs %zu for %s\n", ft_strlen(str + i),
				strlen(str + i), str + i);
	printf("done\n");
	printf("Testing ft_strdup...\n");
	i = -1;
	while (++i < ft_strlen(str))
		if (strcmp(ft_strdup(str + i), strdup(str + i)) != 0)
			printf("\n ft_strdup fail ! %s vs %s for %s\n", ft_strdup(str + i),
				strdup(str + i), str + i);
	printf("done\n");
	printf("Testing ft_strcat...\n");
	printf("%s\n", str);
	ft_strcpy(str + 19, "lol ");
	printf("%s\n", str);
	str[5] = '\0';
	ft_strcat(str, "lol");
	printf("%s\n", str);
	ft_strcpy(str, "lol");
	printf("%s\n", str);
	ft_strcat(str, "aaaaaaaaaaa");
	printf("%s\n", str);
	ft_bzero(str, 1);
	ft_strcat(str, "test test test testtest test");
	printf("%s\n", str);
	printf("done\n");
	printf("Testing ft_putchar...\n");
	i = 'A' - 1;
	while (++i < 'z')
		ft_putchar(i);
	ft_putchar('\n');
	printf("done\n");
	ft_strcpy(str, "test test test testtest test");
	printf("Testing ft_putstr...\n");
	if (argc > 1)
		ft_putstr(argv[1]);
	ft_putstr(str);
	ft_putstr("\n");
	ft_putstr("");
	ft_putstr("\n");
	ft_putstr("test\n");
	i = 0;
	while (++i < ft_strlen(str))
	{
		ft_putstr(str + i);
		ft_putstr("\n");
	}
	printf("done\n");
	printf("Testing ft_puts...\n");
	if (argc > 1)
		ft_puts(argv[1]);
	ft_puts(str);
	ft_puts("");
	ft_puts("test");
	i = 0;
	while (++i < ft_strlen(str))
		ft_puts(str + i);
	printf("done\n");
	printf("Testing ft_cat...\n");
	if (argc > 1)
	{
		if (strcmp(argv[1], "-") == 0)
		{
			printf("	testing fd 0\n");
			i = 0;
		}
		else
			i = open(argv[1], O_RDONLY);
		ft_cat(i);
	}
	else
		printf("	enter a file\n");
	printf("done\n");
/*
	i = 10000000;
	while (--i > 0)
		ft_strlen(str);*/
	(void)argc;
	(void)argv;
	return (0);
}
