;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strcat.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 13:36:51 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 22:13:25 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; char			*ft_strcat(char *s1, const char *s2);
global	ft_strcat
extern	ft_strlen

ft_strcat:
	call	ft_strlen
	mov		rcx, rdi
	mov		rdx, rsi
	add		rcx, rax
.loop:
	mov		cl, [rdx]	; get char
	mov		[rcx], cl	; set char
	cmp		cl, 0
	jz		.ret		; break loop
	inc		rcx			; ++
	inc		rdx
	jmp		.loop
.ret:
	mov		rax, rdi	; return rdi
	ret
