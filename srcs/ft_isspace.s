;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isspace.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 16:39:31 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 16:47:05 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isspace(int c);
global	_ft_isspace

_ft_isspace:
	cmp		rdi, ' '	; check space
	jz		.true
	cmp		rdi, 9		; check \t
	jz		.true
	cmp		rdi, 10		; check \n
	jz		.true
	cmp		rdi, 11		; check \v
	jz		.true
	cmp		rdi, 12		; check \f
	jz		.true
	cmp		rdi, 13		; check \r
	jz		.true
	mov		rax, 0
	ret
.true:
	mov		rax, 1
	ret
