;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memset.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 17:54:38 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 11:21:21 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			*ft_memset(void *mem, int c, unsigned int len);
global	_ft_memset

_ft_memset:
	push	rdi			; save rdi
	mov		rax, rsi
	mov		rcx, rdx
	rep		stosb		; repeat while rcx
	pop		rax			; return rdi
	ret
