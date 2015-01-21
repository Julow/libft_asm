;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isdigit.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 14:16:54 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/21 18:53:19 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isdigit(int c);
global _ft_isdigit

_ft_isdigit:
	cmp		rdi, '0'
	jl		.false
	cmp		rdi, '9'
	jg		.false
	mov		rax, 1
	ret
.false:
	mov		rax, 0
	ret
