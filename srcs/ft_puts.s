;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_puts.s                                          :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 17:14:46 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/23 12:05:52 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_puts(const char *s);
global	ft_puts
extern	ft_putstr
extern	ft_putchar

ft_puts:
	call	ft_putstr
	push	rdi			; save rdi
	mov		rdi, 10
	call	ft_putchar	; put \n
	pop		rdi			; restore rdi
	ret
