;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memset.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 17:54:38 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/25 23:01:37 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			*ft_memset(void *mem, int c, size_t len);
global	ft_memset

ft_memset:
	cmp		rdx, 100
	jl		ft_memset2	; len < 100
	mov		rax, rsi
	mov		rcx, rdx
	mov		r8, rdi		; save rdi
	rep		stosb		; repeat while rcx
	mov		rax, r8		; return rdi
	ret

ft_memset2:
	cmp		rdx, 0
	jz		.ret		; len == 0
	cmp		rdx, 8
	jl		.loop1		; len < 8
	mov		rax, rsi	; set all byte of rsi to sil
	shl		rsi, 8
	mov		sil, al
	mov		rax, rsi
	shl		rsi, 16
	mov		si, ax
	mov		rax, rsi
	shl		rsi, 32
	mov		esi, eax
.loop8:
	sub		rdx, 8		; -= 8
	mov		[rdi+rdx], rsi
	cmp		rdx, 8
	jge		.loop8		; loop if len >= 8
.loop1:
	dec		rdx			; --
	mov		[rdi+rdx], sil
	cmp		rdx, 0
	jg		.loop1		; loop if len > 0
.ret:
	mov		rax, rdi	; return rdi
	ret
