/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hbuisser <hbuisser@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/11 16:21:51 by hbuisser          #+#    #+#             */
/*   Updated: 2020/10/07 18:07:06 by hbuisser         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main()
{
	char dest[40];
	char *s1;
	char *s2;

	s1 = "coucouuuuussuu";
	s2 = "coucouhhh";
	bzero(dest, 40);
	printf("==========TEST==========\n");
	printf("strlen libft = %zu\n", strlen("Bonjours"));
	printf("strlen nasm = %zu\n", ft_strlen("Bonjour"));
	printf("\n");
	printf("strcpy libft = %s\n", strcpy(dest, "Coucou normal"));
	printf("strcpy nasm = %s\n", ft_strcpy(dest, "Coucou nasm"));
	printf("\n");
	printf("strcmp libft = %d\n", strcmp(s1, s2));
	printf("strcmp nasm = %d\n", ft_strcmp(s1, s2));


	
	//printf("ft_strdup = %s\n", ft_strdup("coucccccc"));
	//printf("%zu\n", ft_write(4, "aabxbc", 1));
	//printf("%zu\n", write(4, "aabxbac", 1));
	printf("===========END==========\n");
	//printf("hello = %s\n", ft_hello());

	// int    fd;
	// char    buffer[40];
	// int    i = 0;

	// while(i < 40)
	// {
	// 	buffer[i] = 0;
	// 	i++;
	// }
	// fd = open("./test.txt",    O_RDWR);
	// printf("%zd\n",ft_read(fd, buffer, 39));
	// printf("buffer||%s\n", buffer);

	return (0);
}

