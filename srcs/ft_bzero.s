;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_bzero.s                                         :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 17:54:58 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 23:44:44 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			*ft_bzero(void *mem, size_t len);
global	ft_bzero

ft_bzero:
	mov		r8, rdi		; save rdi
	mov		al, 0
	mov		rcx, rsi
	rep 	stosb		; repeat while rcx
	mov		rax, r8		; return rdi
	ret
