/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rzarquon <rzarquon@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/03 16:29:24 by rzarquon          #+#    #+#             */
/*   Updated: 2022/01/11 18:41:51 by rzarquon         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H

# define FT_PRINTF_H
# include <stdarg.h>
# include <unistd.h>
# define HEX "0123456789abcdef"
# define HEXU "0123456789ABCDEF"

int		ft_printf(const char *s, ...);
int		print_char(int i);
int		print_string(char *s);
int		print_integer(long n, int count);
int		print_xx(unsigned long n, int count);
int		print_xu(unsigned int n, int count);

#endif