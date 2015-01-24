;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalnum.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:44:21 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 23:53:23 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isalnum(int c);
global	ft_isalnum
extern	ft_isalpha
extern	ft_isdigit

ft_isalnum:
	call	ft_isalpha
	cmp		rax, 1
	je		.true
	call	ft_isdigit
	cmp		rax, 1
	je		.true
	ret
.true:
	mov		rax, 1
	ret
