/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/21 14:33:45 by jaguillo          #+#    #+#             */
/*   Updated: 2015/01/25 23:11:56 by jaguillo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <stddef.h>

/*
** ;64				32			16		[8	8]
** ;%rax			%eax		%ax		%ah	%al 	Return 1
** ;%rbx			%ebx		%bx		%bh	%bl 	(Callee saved)
** ;%rcx			%ecx		%cx		%ch	%cl 	Arg 4 + Counter
** ;%rdx			%edx		%dx		%dh	%dl 	Arg 3 + Return 2
** ;%rsi			%esi		%si			%sil	Arg 2
** ;%rdi			%edi		%di			%dil	Arg 1
** ;%rbp			%ebp		%bp			%bpl	(Callee saved)
** ;%rsp			%esp		%sp			%spl	Stack pointer (Callee saved)
** ;%r8				%r8d		%r8w		%r8b	Arg 5
** ;%r9				%r9d		%r9w		%r9b	Arg 6
** ;%r10			%r10d		%r10w		%r10b	Arg 7
** ;%r11			%r11d		%r11w		%r11b	Tmp
** ;%r12			%r12d		%r12w		%r12b	(Callee saved)
** ;%r13			%r13d		%r13w		%r13b	(Callee saved)
** ;%r14			%r14d		%r14w		%r14b	(Callee saved)
** ;%r15			%r15d		%r15w		%r15b	(Callee saved)
** -
** syscall
** 0x2000003	read
** 0x2000004	write
*/

int				ft_isalnum(int c);
int				ft_isalpha(int c);
int				ft_isascii(int c);
int				ft_isdigit(int c);
int				ft_isprint(int c);
int				ft_isspace(int c);
int				ft_isrange(int c, int from, int to);

int				ft_toupper(int c);
int				ft_tolower(int c);

void			*ft_bzero(void *mem, size_t len);
void			*ft_memset(void *mem, int c, size_t len);
void			*ft_memcpy(void *dst, const void *src, size_t len);
void			ft_memswap(void *mem1, void *mem2, size_t len);

size_t			ft_strlen(const char *str);

char			*ft_strcat(char *s1, const char *s2);
char			*ft_strcpy(char *dst, const char *src);
char			*ft_strdup(const char *str);

int				ft_puts(const char *s);
int				ft_putendl(const char *s);
int				ft_putchar(char c);
int				ft_putstr(const char *str);
int				ft_putlstr(const char *str, size_t len);

void			ft_cat(int fd);

int				ft_max(int a, int b);
int				ft_min(int a, int b);

#endif
