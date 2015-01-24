;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_putstr.s                                        :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/23 11:33:04 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 18:05:19 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_putstr(const char *str);
global	ft_putstr
extern	ft_strlen
extern	ft_putlstr

ft_putstr:
	push	rsi			; save rsi
	call	ft_strlen
	mov		rsi, rax
	call	ft_putlstr
	pop		rsi			; restore rsi
	ret
