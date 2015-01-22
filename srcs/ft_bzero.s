;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_bzero.s                                         :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 17:54:58 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/21 21:25:16 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			*ft_bzero(void *mem, unsigned int len);
global	ft_bzero

ft_bzero:
	push	rdi			; save rdi
	mov		rax, 0
	mov		rcx, rsi
	rep 	stosb		; repeat while rcx
	pop		rax			; return rdi
	ret
