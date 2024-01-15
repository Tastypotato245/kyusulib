/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_free.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyusulee <kyusulee@student.42seoul.>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/15 16:43:40 by kyusulee          #+#    #+#             */
/*   Updated: 2024/01/15 16:44:36 by kyusulee         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <except.h>

void	free_strarr(char **strarr)
{
	size_t	i;

	if (strarr == NULL)
		return ;
	i = 0;
	while (strarr[i])
		free(strarr[i++]);
	free(strarr);
}
