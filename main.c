/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/21 13:40:42 by jaguillo          #+#    #+#             */
/*   Updated: 2015/01/31 00:38:32 by jaguillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <ctype.h>
#include <stdlib.h>

int				main(int argc, char **argv)
{
	const int		len = 1000000000;
	const int		count = 100;
	char			*str;
	int				i;

	str = malloc(len / count);
	i = count;
	while (i-- > 0)
		ft_memset(str, 'a', len / count);
	return (0);
}

/*
#define TEST(a,b,c)	(test(#a, a(c), b(c), c))

static void		test(char *str, int ret1, int ret2, char c)
{
	if (ret1 != ret2)
		printf("\n%s fail ! %d vs %d for %c\n", str, ret1, ret2, c);
}

int				main(int argc, char **argv)
{
	char			*str;
	unsigned int	i;

	str = ft_strdup("test test test testtest test");
	ft_puts("Testing ft_isdigit...");
	i = -1;
	while (++i < 256)
		TEST(ft_isdigit, !!isdigit, i);
	ft_puts("done");
	ft_puts("Testing ft_isalpha...");
	i = -1;
	while (++i < 256)
		TEST(ft_isalpha, !!isalpha, i);
	ft_puts("done");
	ft_puts("Testing ft_isascii...");
	i = -1;
	while (++i < 256)
		TEST(ft_isascii, !!isascii, i);
	ft_puts("done");
	ft_puts("Testing ft_isalnum...");
	i = -1;
	while (++i < 256)
		TEST(ft_isalnum, !!isalnum, i);
	ft_puts("done");
	ft_puts("Testing ft_isprint...");
	i = -1;
	while (++i < 256)
		TEST(ft_isprint, !!isprint, i);
	ft_puts("done");
	ft_puts("Testing ft_isspace...");
	i = -1;
	while (++i < 256)
		TEST(ft_isspace, !!isspace, i);
	ft_puts("done");
	ft_puts("Testing ft_toupper...");
	i = -1;
	while (++i < 256)
		TEST(ft_toupper, toupper, i);
	ft_puts("done");
	ft_puts("Testing ft_tolower...");
	i = -1;
	while (++i < 256)
		TEST(ft_tolower, tolower, i);
	ft_puts("done");
	ft_puts("Testing ft_strlen...");
	if (argc > 1)
		printf("ft_strlen(\"%s\") :: %zu\n", argv[1], ft_strlen(argv[1]));
	i = -1;
	while ((++i + 1) < ft_strlen(str))
		if (ft_strlen(str + i) != strlen(str + i))
			printf("\n ft_strlen fail ! %zu vs %zu for %s\n",
				ft_strlen(str + i), strlen(str + i), str + i);
	ft_puts("done");
	ft_puts("Testing ft_strdup...");
	i = -1;
	while ((++i + 1) < ft_strlen(str))
		if (ft_memcmp(ft_strdup(str + i), str + i, ft_strlen(str) - i) != 0)
			printf("\n ft_strdup fail ! %s vs %s for %s\n", ft_strdup(str + i),
				str + i, str + i);
	ft_puts("done");
	ft_puts("Testing ft_memswap...");
	ft_memset(str + 15, 'a', 5);
	ft_puts(str);
	ft_puts("	to:");
	ft_memswap(str, str + 14, 14);
	ft_puts(str);
	ft_puts("done");
	ft_puts("Testing ft_strcat...");
	ft_puts(str);
	ft_strcpy(str + 19, "lol ");
	ft_puts(str);
	str[5] = '\0';
	ft_strcat(str, "lol");
	ft_puts(str);
	ft_strcpy(str, "lol");
	ft_puts(str);
	ft_strcat(str, "aaaaaaaaaaa");
	ft_puts(str);
	ft_bzero(str, 1);
	ft_strcat(str, "test test test testtest test");
	ft_puts(str);
	ft_puts("done");
	ft_puts("Testing ft_putchar...");
	i = 'A' - 1;
	while (++i < 'Z')
		ft_putchar(i);
	ft_putchar('\n');
	ft_puts("done");
	ft_strcpy(str, "test test test testtest test");
	ft_puts("Testing ft_putstr...");
	if (argc > 1)
		ft_putstr(argv[1]);
	ft_putstr(str);
	ft_putstr("\n");
	ft_putstr("");
	ft_putstr("\n");
	ft_putstr("test\n");
	i = 0;
	while ((++i + 1) < ft_strlen(str))
	{
		ft_putstr(str + i);
		ft_putstr("\n");
	}
	ft_putstr("done\n");
	ft_putstr("Testing ft_puts...\n");
	if (argc > 1)
		ft_puts(argv[1]);
	ft_puts(str);
	ft_puts("");
	ft_puts("test");
	i = 0;
	while ((++i + 1) < ft_strlen(str))
		ft_puts(str + i);
	ft_putstr("done\n");
	ft_putstr("Testing ft_cat...\n");
	if (argc > 1)
	{
		if (strcmp(argv[1], "-") == 0)
		{
			ft_putstr("	testing fd 0\n");
			i = 0;
		}
		else
			i = open(argv[1], O_RDONLY);
		ft_cat(i);
	}
	else
		ft_putstr("	enter a file\n");
	ft_putstr("done\n");
	(void)argc;
	(void)argv;
	return (0);
}
*/
