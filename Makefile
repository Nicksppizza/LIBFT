# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahalaoui <ahalaoui@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/11 10:15:44 by ahalaoui          #+#    #+#              #
#    Updated: 2024/11/19 03:05:52 by ahalaoui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
FLAGS = -Wall -Wextra -Werror

SRC =   ft_strlen.c \
		ft_strlcpy.c \
		ft_memcmp.c \
		ft_atoi.c \
		ft_bzero.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_memcpy.c \
		ft_memset.c \
		ft_strchr.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strncmp.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_calloc.c \
		ft_strrchr.c \
		ft_strdup.c \
		ft_memmove.c \
		ft_split.c \
		ft_itoa.c \
		ft_memchr.c \
		ft_strnstr.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_strmapi.c\
		ft_striteri.c \
		ft_putchar_fd.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \

BONUS_SRC =   ft_lstnew_bonus.c \
			  ft_lstadd_front_bonus.c \
			  ft_lstsize_bonus.c \
			  ft_lstlast_bonus.c \
			  ft_lstadd_back_bonus.c \
			  ft_lstdelone_bonus.c \
			  ft_lstclear_bonus.c \
			  ft_lstiter_bonus.c \
			  ft_lstmap_bonus.c

OBJ = $(SRC:.c=.o)
BONUS_OBJ = $(BONUS_SRC:.c=.o)
HEADER = libft.h

all : $(NAME)
$(NAME) : $(OBJ) 

bonus: $(BONUS_OBJ)

%.o: %.c $(HEADER)
	$(CC) $(FLAGS) -c $< 
	ar rcs $(NAME) $@

clean:
	rm -f $(OBJ) $(BONUS_OBJ)
fclean: clean
	rm -f $(NAME)

re: fclean all
.PHONY : clean