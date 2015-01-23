;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_putstr.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/23 11:33:04 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/23 12:06:09 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_putstr(const char *str);
global	ft_putstr
extern	ft_strlen

ft_putstr:
	push	rsi			; save rsi
	call	ft_strlen	; call ft_strlen
	mov		rdx, rax	; len
	mov		rsi, rdi	; str
	mov		rdi, 1		; fd
	mov		rax, 0x2000004
	syscall				; call write
	mov		rax, 0		; return 0
	mov		rdi, rsi	; restore rdi
	pop		rsi			; restore rsi
	ret
