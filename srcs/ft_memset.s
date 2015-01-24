;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memset.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 17:54:38 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 16:18:28 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			*ft_memset(void *mem, int c, size_t len);
global	ft_memset

ft_memset:
	push	rdi			; save rdi
	mov		rax, rsi
	mov		rcx, rdx
	rep		stosb		; repeat while rcx
	pop		rdi			; restore rdi
	mov		rax, rdi	; return rdi
	ret
