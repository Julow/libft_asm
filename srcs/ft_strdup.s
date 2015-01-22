;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_strdup.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 16:23:27 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 21:09:27 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; char			*ft_strdup(const char *str);
global	ft_strdup
extern	ft_strlen
extern	ft_memcpy
extern	malloc

ft_strdup:
	push	rdi
	call	ft_strlen	; call ft_strlen
	push	rax
	mov		rdi, rax
	call	malloc		; call malloc
	mov		rdi, rax
	pop		rdx
	pop		rsi
	jmp		ft_memcpy	; return ft_memcpy
