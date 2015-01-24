;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_puts.s                                          :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 17:14:46 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 23:32:43 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_puts(const char *s);
; int			ft_putendl(const char *s);
global	ft_puts
global	ft_putendl
extern	ft_putstr
extern	ft_putchar

ft_puts:
ft_putendl:
	call	ft_putstr
	mov		rdi, 10
	call	ft_putchar	; put \n
	ret
