;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_bzero.s                                         :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 17:54:58 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 17:32:16 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			*ft_bzero(void *mem, size_t len);
global	_ft_bzero

_ft_bzero:
	push	rdi			; save rdi
	mov		rax, 0
	mov		rcx, rsi
	rep 	stosb		; repeat while rcx
	pop		rax			; return rdi
	ret
