;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strdup.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 16:23:27 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 16:35:25 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; char			*ft_strdup(const char *str);
global	_ft_strdup
extern	_ft_strlen
extern	_ft_memcpy
extern	_malloc

_ft_strdup:
	push	rdi
	call	_ft_strlen	; call ft_strlen
	push	rax
	mov		rdi, rax
	call	_malloc		; call malloc
	mov		rdi, rax
	pop		rdx
	pop		rsi
	jmp		_ft_memcpy	; return ft_memcpy
