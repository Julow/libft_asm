;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isdigit.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 14:16:54 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/21 18:25:31 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_range(int curr, int min, int max);
global _ft_range

_ft_range:
	mov		rax, 0
	ret

; int			ft_isdigit(int c);
global _ft_isdigit

_ft_isdigit:
	mov		rsi, '0'
	mov		rdx, '9'
	jmp		_ft_range
