;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isrange.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 20:41:13 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 11:21:32 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isrange(int c, int from, int to);
global	_ft_isrange

_ft_isrange:
	cmp		rdi, rsi
	jl		.false
	cmp		rdi, rdx
	jg		.false
	mov		rax, 1
	ret
.false:
	mov		rax, 0
	ret
