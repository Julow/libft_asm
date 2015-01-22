;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isprint.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:47:15 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 11:22:10 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isprint(int c);
global	_ft_isprint
extern	_ft_isrange

_ft_isprint:
	mov		rsi, ' '
	mov		rdx, '~'
	jmp		_ft_isrange
