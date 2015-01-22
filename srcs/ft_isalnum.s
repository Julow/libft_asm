;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalnum.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:44:21 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 22:08:46 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isalnum(int c);
global	ft_isalnum
extern	ft_isalpha
extern	ft_isdigit

ft_isalnum:
	call	ft_isalpha
	push	rax
	call	ft_isdigit
	pop		rdx
	or		rax, rdx	; or
	ret
