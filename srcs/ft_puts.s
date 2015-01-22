;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_puts.s                                          :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 17:14:46 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 22:22:29 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_puts(const char *s);
global	ft_puts
extern	ft_strlen

ft_puts:
	push	rsi			; save rsi
	call	ft_strlen	; call ft_strlen
	mov		rdx, rax	; len
	mov		rsi, rdi	; str
	mov		rdi, 1		; fd
	mov		rax, 0x2000004	; syscall write
	syscall				; call write
	mov		rax, 0		; return 0
	mov		rdi, rsi	; restore rdi
	pop		rsi			; restore rsi
	ret
