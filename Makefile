# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kyusulee <kyusulee@student.42seoul.>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/09 18:55:32 by kyusulee          #+#    #+#              #
#    Updated: 2024/01/15 12:41:52 by kyusulee         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libkyusulib.a

LIBFT		=	./libft/
GNL			=	./get_next_line/
PRINTF		=	./ft_printf/
LIBFT_A		=	$(addprefix $(LIBFT), libft.a)
GNL_A		=	$(addprefix $(GNL), libgnl.a)
PRINTF_A	=	$(addprefix $(PRINTF), libftprintf.a)

ARX			=	ar x
AR			=	ar rc
CC			=	cc
CFLAGS		=	-Werror -Wall -Wextra
RM			=	rm -f
ECHO		=	echo

all			:	$(NAME)
				@$(ECHO) "*** Make <kyusulib> complete."

$(NAME)		:	$(LIBFT_A) $(GNL_A) $(PRINTF_A)
				@$(ARX) $(LIBFT_A)
				@$(ARX) $(GNL_A)
				@$(ARX) $(PRINTF_A)
				@$(AR) $(NAME) *.o
				@$(RM) *.o

$(LIBFT_A)	:
				@$(MAKE) -C $(LIBFT)

$(GNL_A)	:
				@$(MAKE) -C $(GNL)

$(PRINTF_A)	:
				@$(MAKE) -C $(PRINTF)

clean		:
				@$(MAKE) -C $(LIBFT) clean
				@$(MAKE) -C $(GNL) clean
				@$(MAKE) -C $(PRINTF) clean
				@$(ECHO) "*** Clean <kyusulib>."

fclean		:
				@$(MAKE) -C $(LIBFT) fclean
				@$(MAKE) -C $(GNL) fclean
				@$(MAKE) -C $(PRINTF) fclean
				@$(RM) __.SYMDEF\ SORTED
				@$(RM) $(NAME)
				@$(ECHO) "*** Fclean <kyusulib>."

re			:
				@$(ECHO) "*** Re-make <kyusulib> start."
				@$(MAKE) fclean
				@$(MAKE) all
				@$(ECHO) "*** Re-make <kyusulib> complete."

.PHONY		:	all clean fclean re
