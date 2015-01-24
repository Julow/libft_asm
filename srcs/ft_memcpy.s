;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memcpy.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 17:54:16 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 11:56:27 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			*ft_memcpy(void *dst, const void *src, size_t len);
global	ft_memcpy

ft_memcpy:
	push	rdi			; save rdi
	mov		rcx, rdx
	rep		movsb		; repeat while rcx
	pop		rdi			; restore rdi
	mov		rax, rdi	; return rdi
	ret
