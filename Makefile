# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kyusulee <kyusulee@student.42seoul.>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/09 18:55:32 by kyusulee          #+#    #+#              #
#    Updated: 2024/01/15 12:00:25 by kyusulee         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIBFT		=	./libft/
GNL			=	./get_next_line/
PRINTF		=	./ft_printf/
LIBFT_A		=	$(addprefix $(LIBFT), libft.a)
GNL_A		=	$(addprefix $(GNL), libgnl.a)
PRINTF_A	=	$(addprefix $(PRINTF), libftprintf.a)

CC			=	cc
CFLAGS		=	-Werror -Wall -Wextra
RM			=	rm -f
ECHO		=	echo

all			:	$(LIBFT_A) $(GNL_A) $(PRINTF_A)
				@$(ECHO) "*** Make <kyusulib> complete."

$(LIBFT_A)	:
				@$(MAKE) -C $(LIBFT)
				@echo "*** Compiled $(LIBFT_A)."

$(GNL_A)	:
				@$(MAKE) -C $(GNL)
				@echo "*** Compiled $(GNL_A)."

$(PRINTF_A)	:
				@$(MAKE) -C $(PRINTF)
				@echo "*** Compiled $(PRINTF_A)."

clean		:
				@$(MAKE) -C $(LIBFT) clean
				@$(MAKE) -C $(GNL) clean
				@$(MAKE) -C $(PRINTF) clean
				@$(ECHO) "*** Clean <kyusulib>."

fclean		:
				@$(MAKE) -C $(LIBFT) fclean
				@$(MAKE) -C $(GNL) fclean
				@$(MAKE) -C $(PRINTF) fclean
				@$(ECHO) "*** Fclean <kyusulib>."

re			:
				@$(ECHO) "*** Re-make <kyusulib> start."
				@$(MAKE) fclean
				@$(MAKE) all
				@$(ECHO) "*** Re-make <kyusulib> complete."

.PHONY		:	all clean fclean re
