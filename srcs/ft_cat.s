;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_cat.s                                           :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 17:30:19 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/22 22:16:18 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			ft_cat(int fd);
global	ft_cat
extern	ft_puts

ft_cat:
	push	rsi			; save rsi
.loop:
	; read
	mov		rdx, buff_size
	mov		rsi, buff
	mov		rax, 0x2000003	; syscall read
	syscall				; call read
	cmp		rax, 1
	jl		.ret		; break loop
	; write
	push	rdi			; save fd
	mov		rdx, rax
	mov		rsi, buff
	mov		rdi, 1
	mov		rax, 0x2000004	; syscall write
	syscall				; call write
	pop		rdi			; restore fd
	jmp		.loop
.ret:
	pop		rsi			; restore rsi
	ret

section .data
	buff		times 192 db 0
	buff_size	equ $ - buff
