;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strdup.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 16:23:27 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 22:36:51 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; char			*ft_strdup(const char *str);
global	ft_strdup
extern	ft_strlen
extern	ft_memcpy
extern	malloc

ft_strdup:
	call	ft_strlen	; get len
	push	rdi			; save rdi
	push	rax			; save len
	mov		rdi, rax
	call	malloc		; malloc
	mov		rdi, rax
	pop		rdx
	pop		rsi
	call	ft_memcpy
	mov		rdi, rsi	; restore rdi
	ret
