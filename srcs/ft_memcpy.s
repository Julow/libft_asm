;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memcpy.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 17:54:16 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 11:21:27 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			*ft_memcpy(void *dst, const void *src, unsigned int len);
global	_ft_memcpy

_ft_memcpy:
	push	rdi			; save rdi
	mov		rcx, rdx
	rep		movsb		; repeat while rcx
	pop		rax			; return rdi
	ret
