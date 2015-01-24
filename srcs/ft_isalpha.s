;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isalpha.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:21:17 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 23:53:16 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isalpha(int c);
global	ft_isalpha
extern	ft_isrange

ft_isalpha:
	mov		rsi, 'a'
	mov		rdx, 'z'
	call	ft_isrange
	cmp		rax, 1
	je		.true
	mov		rsi, 'A'
	mov		rdx, 'Z'
	call	ft_isrange
	cmp		rax, 1
	je		.true
	ret
.true:
	mov		rax, 1
	ret
