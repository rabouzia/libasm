SRCS = $(addprefix mandatory/, ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s)
OBJS = $(SRCS:.s=.o)
# BSRCS = $(addprefix bonus/, ft_list_remove_if.s ft_list_sort.s ft_atoi_base.s ft_list_size.s ft_list_push_front.s)
# BOBJS = $(BSRCS:.s=.o)
all: libasm.a

libasm.a: $(OBJS)
	@ar rcs $@ $^

%.o: %.s
	@nasm -f elf64 $< -o $@

bonus: $(BOBJS) $(OBJS)
	@ar rcs libasm.a $^

test: re bonus
	@mkdir tmp
	@cc -g3 -c main.c -o main.o
	@cc -fsanitize=address -g main.o -L. -lasm -o test
verbose_test: re bonus
	@mkdir tmp
	@cc -c main_verbose.c -o main_verbose.o
	@cc -fsanitize=address -g main_verbose.o -L. -lasm -o test
	@./test
	@make fclean

clean:
	@rm -rf $(OBJS) $(BOBJS) main.o main_verbose.o

fclean: clean
	@rm -rf libasm.a *test*
	@rm -f readonly.txt
	@rm -f *test*
	@rm -rf tmp

re: fclean all

rex: re
	valgrind ./testmain

.PHONY: all clean fclean re rex test