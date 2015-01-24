;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_putchar.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/23 11:20:52 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 23:26:43 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_putchar(char c);
global	ft_putchar
extern	ft_putlstr

ft_putchar:
	push	rsi			; save rsi
	push	rdi			; save rdi
	mov		[char], dil
	mov		rdi, char	; char (rdi)
	mov		rsi, 1		; len
	call	ft_putlstr
	pop		rdi			; restore rdi
	pop		rsi			; restore rsi
	ret

section .data
	char	db 0, 0
