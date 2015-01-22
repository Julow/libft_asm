;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalpha.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:21:17 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 21:11:47 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isalpha(int c);
global	ft_isalpha
extern	ft_isrange

ft_isalpha:
	mov		rsi, 'a'
	mov		rdx, 'z'
	call	ft_isrange
	push	rax
	mov		rsi, 'A'
	mov		rdx, 'Z'
	call	ft_isrange
	pop		rdi
	or		rax, rdi
	ret
