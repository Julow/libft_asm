;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strcpy.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 14:59:38 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 22:05:48 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; char			*ft_strcpy(char *dst, const char *src);
global	ft_strcpy

ft_strcpy:
	push	rdi			; save rdi
.loop:
	mov		cl, [rsi]	; get char
	mov		[rdi], cl	; set char
	cmp		cl, 0
	jz		.ret		; break loop
	inc		rdi			; ++
	inc		rsi
	jmp		.loop
.ret:
	pop		rdi			; restore rdi
	mov		rax, rdi	; return rdi
	ret
