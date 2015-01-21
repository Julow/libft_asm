/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/21 14:33:45 by jaguillo          #+#    #+#             */
/*   Updated: 2015/01/21 18:25:16 by jaguillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

/*
; %rdi = 1
; %rsi = 2
; %rdx = 3
; %rcx = 4 (or counter)
; %rax = return

; offset [rdi+offset]
; offset [rdi + offset*rsi]
*/

int				ft_isdigit(int c);
void			*ft_memset(void *mem, int c, unsigned int len);
void			*ft_bzero(void *mem, unsigned int len);
void			*ft_memcpy(void *dst, const void *src, unsigned int len);

#endif
