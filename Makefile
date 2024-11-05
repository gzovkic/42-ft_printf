CC = cc
CFLAGS = -Wextra -Wall -Werror

SRCS =	ft_printf.c \
		ft_puthex_rt_lowercase.c \
		ft_puthex_rt_uppercase.c \
		ft_putnbr_rt.c \
		ft_putptr_rt.c \
		ft_putudc_rt.c \
		ft_putchar_rt.c \
		ft_putstr_rt.c \
		ft_strlen.c

HEADERS = ft_printf.h

NAME = libftprintf.a

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re