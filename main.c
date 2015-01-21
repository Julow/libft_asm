/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/21 13:40:42 by jaguillo          #+#    #+#             */
/*   Updated: 2015/01/21 18:51:54 by jaguillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int				main(int argc, char **argv)
{
	char			c;

	c = '0' - 4;
	while (++c < '9' + 4)
		printf("%c isdigit %d\n", c, ft_isdigit(c));
	printf("%c isdigit %d\n", '\x200', ft_isdigit('\x200'));
	printf("%c isdigit %d\n", '\0', ft_isdigit('\0'));
	printf("%c isdigit %d\n", '\0', ft_isdigit('\0'));
	c = -1;
	printf("%c isdigit %d\n", c, ft_isdigit(c));
	(void)argc;
	(void)argv;
	return (0);
}
