# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jaguillo <jaguillo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/03 13:05:11 by jaguillo          #+#    #+#              #
#    Updated: 2015/01/26 12:18:36 by jaguillo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

TEST = test

C_DIR = srcs
O_DIR = o

ifeq ($(shell uname),Linux)
	FLAGS = -f elf64 -DLINUX
else
	FLAGS = -f macho64 --prefix _
endif

C_FILES = $(shell find $(C_DIR) -type f -print | grep "\.s")
C_DIRS = $(shell find $(C_DIR) -type d -print)

O_DIRS = $(C_DIRS:$(C_DIR)/%=$(O_DIR)/%)
O_FILES = $(C_FILES:$(C_DIR)/%.s=$(O_DIR)/%.o)

all: $(NAME)

$(NAME): $(O_FILES)
	@ar -rcs $@ $^ && printf "\033[0;32m" || printf "\033[0;31m"
	@printf "%-34s \033[1;30m<<--\033[0;0m\n" "$@"

$(O_DIR)/%.o: $(C_DIR)/%.s
	@mkdir -p $(O_DIRS) $(O_DIR) 2> /dev/null || echo "" > /dev/null
	@nasm $(FLAGS) -o $@ $< \
	&& printf "\033[0;0m%-34s\033[1;30m -->>\t\033[0;32m$@\033[0;0m\n" "$<" \
	|| (printf "\033[0;0m%-34s\033[1;30m -->>\t\033[0;31m$@\033[0;0m\n" "$<" \
		&& exit 1)

clean:
	@rm $(O_FILES) 2> /dev/null || echo "" > /dev/null
	@rmdir $(O_DIRS) $(O_DIR) 2> /dev/null || echo "" > /dev/null

fclean: clean
	@rm $(NAME) 2> /dev/null || echo "" > /dev/null
	@rm $(TEST) 2> /dev/null || echo "" > /dev/null

re: fclean all

$(TEST): $(NAME)
	@gcc -Wall -Wextra $(NAME) main.c -I . -L . -lfts -o $@ $< \
		&& printf "\033[0;32m" \
		|| printf "\033[0;31m"
	@printf "%-34s \033[1;30m<<--\033[0;0m\n" "$@"

.PHONY: all clean fclean re
