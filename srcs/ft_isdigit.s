;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_isdigit.s                                       :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/21 14:16:54 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 21:11:58 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; int			ft_isdigit(int c);
global	ft_isdigit
extern	ft_isrange

ft_isdigit:
	mov		rsi, '0'
	mov		rdx, '9'
	jmp		ft_isrange
