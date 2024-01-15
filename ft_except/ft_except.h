/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_except.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyusulee <kyusulee@student.42seoul.>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/15 13:37:36 by kyusulee          #+#    #+#             */
/*   Updated: 2024/01/15 16:44:59 by kyusulee         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_EXCEPT_H
# define FT_EXCEPT_H
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <errno.h>
# include "../libft/libft.h"

// ft_except.c
void	exit_handler(int case_num, char *program_name, char *object);
int		func_guard(int result);
void	*null_guard(void *pointer);

// ft_free.c
void	free_strarr(char **strarr);

#endif
