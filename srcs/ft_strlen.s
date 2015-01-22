;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strlen.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:58:53 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 00:27:49 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; unsigned int	ft_strlen(const char *str);
global	ft_strlen

ft_strlen:
	mov		rcx, rdi
.loop:
	mov		al,[rdi] 	; get char
	cmp		al, 0
	jz		.ret		; break loop
	inc		rdi			; ++
	jmp		.loop
.ret:
	sub		rdi, rcx	; sub pointers
	mov		rax, rdi	; return
	ret
