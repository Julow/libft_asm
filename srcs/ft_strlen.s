;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strlen.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:58:53 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 15:23:45 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; unsigned int	ft_strlen(const char *str);
global	_ft_strlen

_ft_strlen:
	mov		rax, rdi
.loop:
	mov		cl,[rax] 	; get char
	and		cl, 0xFF
	jz		.ret		; break loop
	inc		rax			; ++
	jmp		.loop
.ret:
	sub		rax, rdi	; sub pointers
	ret
