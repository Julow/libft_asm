;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memswap.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/25 22:16:46 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/25 22:34:58 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			ft_memswap(void *mem1, void *mem2, size_t len);
global	ft_memswap

ft_memswap:
	cmp		rdx, 0
	jz		.ret		; len == 0
	cmp		rdx, 8
	jl		.loop1		; len < 8
.loop8:
	mov		rax, [rdi]
	mov		rcx, [rsi]
	mov		[rdi], rcx
	mov		[rsi], rax
	sub		rdx, 8		; -= 8
	add		rdi, 8		; += 8
	add		rsi, 8
	cmp		rdx, 8
	jge		.loop8		; loop if len >= 8
.loop1:
	mov		al, [rdi]
	mov		cl, [rsi]
	mov		[rdi], cl
	mov		[rsi], al
	dec		rdx			; --
	inc		rdi			; ++
	inc		rsi
	cmp		rdx, 0
	jg		.loop1		; loop if len > 0
.ret:
	ret
