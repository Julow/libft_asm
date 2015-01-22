;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalnum.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:44:21 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/21 21:46:43 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isalnum(int c);
global	ft_isalnum
extern	ft_isalpha
extern	ft_isdigit

ft_isalnum:
	push	rdi
	call	ft_isalpha
	pop		rdi
	push	rax
	call	ft_isdigit
	pop		rdi
	or		rax, rdi
	ret
