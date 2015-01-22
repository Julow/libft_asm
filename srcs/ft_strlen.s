;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strlen.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:58:53 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 17:32:02 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; size_t		ft_strlen(const char *str);
global	_ft_strlen

_ft_strlen:
	mov		rax, rdi
.loop:
	mov		cx,[rax] 	; get char
	cmp		cl, 0		; test first byte
	jz		.ret		; break loop
	inc		rax			; ++
	cmp		ch, 0		; test last byte
	jz		.ret		; break loop
	inc		rax			; ++
	jmp		.loop
.ret:
	sub		rax, rdi	; sub pointers
	ret
