;; ************************************************************************** ;;
;;                                                                            ;;
;;                                                        :::      ::::::::   ;;
;;   ft_cat.s                                           :+:      :+:    :+:   ;;
;;                                                    +:+ +:+         +:+     ;;
;;   By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+        ;;
;;                                                +#+#+#+#+#+   +#+           ;;
;;   Created: 2015/01/22 17:30:19 by jaguillo          #+#    #+#             ;;
;;   Updated: 2015/01/24 23:34:29 by jaguillo         ###   ########.fr       ;;
;;                                                                            ;;
;; ************************************************************************** ;;

; void			ft_cat(int fd);
global	ft_cat
extern	ft_puts

ft_cat:
	mov		r8, rdi		; save rdi
.loop:
	; read
	mov		rdx, buff_size
	mov		rsi, buff
	mov		rdi, r8		; fd
	mov		rax, 0x2000003	; syscall read
	syscall				; call read
	jc		.ret		; break loop
	cmp		rax, 0
	jle		.ret		; break loop
	; write
	mov		rdx, rax
	mov		rsi, buff
	mov		rdi, 1
	mov		rax, 0x2000004	; syscall write
	syscall				; call write
	jmp		.loop
.ret:
	ret

section .data
	buff		times 192 db 0
	buff_size	equ $ - buff
