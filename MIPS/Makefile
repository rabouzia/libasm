# SRCS = $(addprefix mandatory/, ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s)
# OBJS = $(SRCS:.s=.o)
# # BSRCS = $(addprefix bonus/, ft_list_remove_if.s ft_list_sort.s ft_atoi_base.s ft_list_size.s ft_list_push_front.s)
# # BOBJS = $(BSRCS:.s=.o)
# all: libasm.a

# libasm.a: $(OBJS)
# 	@ar rcs $@ $^

# %.o: %.s
# 	@nasm -f elf64 $< -o $@

# bonus: $(BOBJS) $(OBJS)
# 	@ar rcs libasm.a $^

# test: re bonus
# 	@mkdir tmp
# 	@cc -g3 -c main.c -o main.o
# 	@cc -fsanitize=address -g main.o -L. -lasm -o test
# verbose_test: re bonus
# 	@mkdir tmp
# 	@cc -c main_verbose.c -o main_verbose.o
# 	@cc -fsanitize=address -g main_verbose.o -L. -lasm -o test
# 	@./test
# 	@make fclean

# clean:
# 	@rm -rf $(OBJS) $(BOBJS) main.o main_verbose.o

# fclean: clean
# 	@rm -rf libasm.a *test*
# 	@rm -f readonly.txt
# 	@rm -f *test*
# 	@rm -rf tmp

# re: fclean all

# rex: re
# 	valgrind ./testmain

# .PHONY: all clean fclean re rex test

# Mandatory Sources and Objects
SRCS = $(addprefix mandatory/, ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s)
OBJS = $(SRCS:.s=.o)

# Bonus Sources and Objects
BSRCS = $(addprefix bonus/, ft_list_remove_if.s ft_list_sort.s ft_atoi_base.s ft_list_size.s ft_list_push_front.s)
BOBJS = $(BSRCS:.s=.o)

# Compiler and Flags
NASM = nasm
NASM_FLAGS = -f elf64
CC = cc
CFLAGS = -g3 -fsanitize=address

# Default Target
all: libasm.a

# Library Target
libasm.a: $(OBJS)
	@ar rcs $@ $^

# Rule to compile .s files to .o
%.o: %.s
	@$(NASM) $(NASM_FLAGS) $< -o $@

# Bonus Rule
bonus: $(OBJS) $(BOBJS)
	@ar rcs libasm.a $^

# Test Rule
test: re bonus
	@mkdir -p tmp
	@$(CC) -c main.c -o main.o
	@$(CC) $(CFLAGS) main.o -L. -lasm -o test

# Verbose Test Rule
verbose_test: re bonus
	@mkdir -p tmp
	@$(CC) -c main_verbose.c -o main_verbose.o
	@$(CC) $(CFLAGS) main_verbose.o -L. -lasm -o test
	@./test
	@make fclean

# Clean Rules
clean:
	@rm -rf $(OBJS) $(BOBJS) main.o main_verbose.o

fclean: clean
	@rm -rf libasm.a test tmp

# Rebuild Rules
re: fclean all

rex: re
	valgrind ./test

.PHONY: all clean fclean re rex test verbose_test bonus
