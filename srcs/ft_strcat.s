;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strcat.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 13:36:51 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 21:12:39 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; char			*ft_strcat(char *s1, const char *s2);
global	ft_strcat
extern	ft_strlen

ft_strcat:
	push	rdi			; save rdi
	call	ft_strlen
	add		rdi, rax
.loop:
	mov		cl, [rsi]	; get char
	mov		[rdi], cl	; set char
	cmp		cl, 0
	jz		.ret		; break loop
	inc		rdi			; ++
	inc		rsi
	jmp		.loop
.ret:
	pop		rax			; return rdi
	ret
