;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalpha.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:21:17 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 11:21:59 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isalpha(int c);
global	_ft_isalpha
extern	_ft_isrange

_ft_isalpha:
	mov		rsi, 'a'
	mov		rdx, 'z'
	call	_ft_isrange
	push	rax
	mov		rsi, 'A'
	mov		rdx, 'Z'
	call	_ft_isrange
	pop		rdi
	or		rax, rdi
	ret
