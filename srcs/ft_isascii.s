;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isascii.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 21:42:53 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/21 21:43:37 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isascii(int c);
global	ft_isascii
extern	ft_isrange

ft_isascii:
	mov		rsi, 0
	mov		rdx, 127
	jmp		ft_isrange
