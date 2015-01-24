;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_putchar.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/23 11:20:52 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 23:31:41 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_putchar(char c);
global	ft_putchar
extern	ft_putlstr

ft_putchar:
	mov		[char], dil
	mov		rdi, char	; char (rdi)
	mov		rsi, 1		; len
	call	ft_putlstr
	ret

section .data
	char	db 0, 0
