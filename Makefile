#*************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rzarquon <rzarquon@student.21-school.ru>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/06 12:45:50 by rzarquon          #+#    #+#              #
#    Updated: 2021/11/08 20:39:00 by rzarquon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

SRCS	=	ft_printf_utils.c ft_printf.c


HEADER	=	ft_printf.h
CC	=	cc
CFLAGS	=	-Wall -Wextra -Werror

OBJ	=	$(patsubst %.c, %.o, $(SRCS))

.PHONY	:	all clean fclean re

all	:	$(NAME)

$(NAME)	:	$(OBJ) $(HEADER)
	ar rcs $(NAME) $?

%.o	:	%.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@


clean	:
	rm -f $(OBJ)

fclean	:	clean
	$(RM) $(NAME)

re	:	fclean all
