;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isdigit.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 14:16:54 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 11:22:07 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isdigit(int c);
global	_ft_isdigit
extern	_ft_isrange

_ft_isdigit:
	mov		rsi, '0'
	mov		rdx, '9'
	jmp		_ft_isrange
