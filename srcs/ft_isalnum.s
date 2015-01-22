;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalnum.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:44:21 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 11:22:29 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isalnum(int c);
global	_ft_isalnum
extern	_ft_isalpha
extern	_ft_isdigit

_ft_isalnum:
	push	rdi
	call	_ft_isalpha
	pop		rdi
	push	rax
	call	_ft_isdigit
	pop		rdi
	or		rax, rdi
	ret
