# Sources and Objects
SRCS = $(addprefix mandatory/, ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s)
OBJS = $(SRCS:.s=.o)

# Bonus Sources and Objects
BSRCS = $(addprefix bonus/, ft_list_remove_if.s ft_list_sort.s ft_atoi_base.s ft_list_size.s ft_list_push_front.s)
BOBJS = $(BSRCS:.s=.o)

# Compiler and Flags for AVR
AVR_AS = avr-as # AVR assembler
AVR_FLAGS = -mmcu=atmega328p # Specify the target microcontroller (e.g., ATmega328P)
CC = avr-gcc
CFLAGS = -mmcu=atmega328p -g3 -Os

# Default Target
all: libasm.a

# Library Target
libasm.a: $(OBJS)
	@avr-ar rcs $@ $^

# Rule to compile .s files to .o
%.o: %.s
	@$(AVR_AS) $(AVR_FLAGS) $< -o $@

# Bonus Rule
bonus: $(OBJS) $(BOBJS)
	@avr-ar rcs libasm.a $^

# Test Rule
test: re bonus
	@mkdir -p tmp
	@$(CC) -c main.c -o main.o
	@$(CC) $(CFLAGS) main.o -L. -lasm -o test.elf
	@avr-size test.elf

# Verbose Test Rule
verbose_test: re bonus
	@mkdir -p tmp
	@$(CC) -c main_verbose.c -o main_verbose.o
	@$(CC) $(CFLAGS) main_verbose.o -L. -lasm -o test.elf
	@avr-size test.elf
	@make fclean

# Clean Rules
clean:
	@rm -rf $(OBJS) $(BOBJS) main.o main_verbose.o

fclean: clean
	@rm -rf libasm.a test.elf tmp

# Rebuild Rules
re: fclean all

rex: re
	@simavr -f test.elf # Replace with appropriate AVR simulator or upload method

.PHONY: all clean fclean re rex test verbose_test bonus
