;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_memswap.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/25 22:16:46 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/25 22:24:53 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			ft_memswap(void *mem1, void *mem2, size_t len);
global	ft_memswap

ft_memswap:
	cmp		rdx, 0
	jz		.ret		; len == 0
.loop:
	mov		al, [rdi]
	mov		cl, [rsi]
	mov		[rdi], cl
	mov		[rsi], al
	dec		rdx			; --
	inc		rdi			; ++
	inc		rsi
	cmp		rdx, 0
	jg		.loop		; continue
.ret:
	ret
