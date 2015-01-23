;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_putchar.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/23 11:20:52 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/23 11:33:20 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_putchar(char c);
global	ft_putchar

ft_putchar:
	push	rdi			; save rdi
	mov		rdi, 1		; fd
	mov		rsi, rsp	; char (rdi)
	mov		rdx, 1		; len
	mov		rax, 0x2000004	; syscall write
	syscall
	pop		rdi			; restore rdi
	ret
