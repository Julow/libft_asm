;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_puts.s                                          :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 17:14:46 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 17:27:16 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_puts(const char *s);
global	_ft_puts
extern	_ft_strlen

_ft_puts:
	call	_ft_strlen	; call ft_strlen
	mov		rdx, rax	; len
	mov		rsi, rdi	; str
	mov		rdi, 1		; fd
	mov		rax, 0x2000004		; syscall write
	syscall				; call write
	mov		rax, 0		; return 0
	ret
