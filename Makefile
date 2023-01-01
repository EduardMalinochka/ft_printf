# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: elukutin <elukutin@student.42istanbul.c    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/01 19:25:58 by elukutin          #+#    #+#              #
#    Updated: 2022/11/01 20:13:18 by elukutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= ft_printf.c utils.c 

OBJS 		= $(SRCS:.c=.o)

CC			= gcc
CFLAGS		=-Wall -Wextra -Werror

NAME		= libftprintf.a

all:		$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)
clean: 
			rm -f $(OBJS)

fclean: 
			rm -f $(NAME)

re:			fclean all

.PHONY:		all clean fclean re