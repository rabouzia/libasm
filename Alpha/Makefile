# Sources and Objects
SRCS = $(addprefix mandatory/, ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s)
OBJS = $(SRCS:.s=.o)

# Bonus Sources and Objects
BSRCS = $(addprefix bonus/, ft_list_remove_if.s ft_list_sort.s ft_atoi_base.s ft_list_size.s ft_list_push_front.s)
BOBJS = $(BSRCS:.s=.o)

# Compiler and Flags for Alpha
ALPHA_AS = alpha-linux-gnu-as # Replace with the actual Alpha assembler tool
ALPHA_FLAGS = -o # Add any Alpha-specific assembler flags if required
CC = alpha-linux-gnu-gcc
CFLAGS = -g3 -O2

# Default Target
all: libasm.a

# Library Target
libasm.a: $(OBJS)
	@ar rcs $@ $^

# Rule to compile .s files to .o
%.o: %.s
	@$(ALPHA_AS) $(ALPHA_FLAGS) $< -o $@

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
