;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_toupper.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:48:22 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 11:21:01 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_toupper(int c);
global	_ft_toupper

_ft_toupper:
	mov		rax, rdi
	cmp		rdi, 'a'
	jl		.ret
	cmp		rdi, 'z'
	jg		.ret
	sub		rax, 32
.ret:
	ret
