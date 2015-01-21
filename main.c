/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/21 13:40:42 by jaguillo          #+#    #+#             */
/*   Updated: 2015/01/21 17:58:08 by jaguillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int				main(int argc, char **argv)
{
	if (argc <= 1)
		return (1);
	printf("%c isdigit %d\n", argv[1][0], ft_isdigit(argv[1][0]));
	(void)argc;
	(void)argv;
	return (0);
}
