;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strcpy.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 14:59:38 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 16:13:14 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; char			*ft_strcpy(char *dst, const char *src);
global	ft_strcpy

ft_strcpy:
	mov		rdx, rdi
	mov		rcx, rsi
.loop:
	mov		cl, [rcx]	; get char
	mov		[rdx], cl	; set char
	cmp		cl, 0
	jz		.ret		; break loop
	inc		rdx			; ++
	inc		rcx
	jmp		.loop
.ret:
	mov		rax, rdi	; return rdi
	ret
