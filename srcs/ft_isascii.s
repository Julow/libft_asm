;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isascii.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:42:53 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 11:22:04 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isascii(int c);
global	_ft_isascii
extern	_ft_isrange

_ft_isascii:
	mov		rsi, 0
	mov		rdx, 127
	jmp		_ft_isrange
