NAME = libasm_arm
SRC_DIR = src/
OBJ_DIR = obj/
BONUS_DIR = bonus/

SRCS = $(SRC_DIR)ft_strlen.s # $(SRC_DIR)ft_strdup.s$(SRC_DIR)ft_strlen.s $(SRC_DIR)ft_strcpy.s $(SRC_DIR)ft_strcmp.s $(SRC_DIR)ft_write.s
OBJS = $(addprefix $(OBJ_DIR), $(notdir $(SRCS:.s=.o)))

BONUS_SRCS = $(BONUS_DIR)ft_list_remove_if.s $(BONUS_DIR)ft_list_sort.s $(BONUS_DIR)ft_atoi_base.s $(BONUS_DIR)ft_list_size.s $(BONUS_DIR)ft_list_push_front.s
BONUS_OBJS = $(addprefix $(OBJ_DIR), $(notdir $(BONUS_SRCS:.s=.o)))

AS = as
LD = ld
ARCH_FLAGS = --architecture=aarch64
LD_FLAGS = --dynamic-linker=/lib/ld-linux-aarch64.so.1 -lc -e _start

# Default Target
all: $(NAME)

# Link Rule
$(NAME): $(OBJS)
	@$(LD) $(LD_FLAGS) -o $@ $^ $(ARCH_FLAGS)

# Assembly Compilation Rule
$(OBJ_DIR)%.o: $(SRC_DIR)%.s
	@mkdir -p $(OBJ_DIR)
	@$(AS) -o $@ $<

# Bonus Target
bonus: $(OBJS) $(BONUS_OBJS)
	@$(LD) $(LD_FLAGS) -o $(NAME) $(OBJS) $(BONUS_OBJS) $(ARCH_FLAGS)

# Bonus Assembly Compilation Rule
$(OBJ_DIR)%.o: $(BONUS_DIR)%.s
	@mkdir -p $(OBJ_DIR)
	@$(AS) -o $@ $<

# Clean Rules
clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -f $(NAME)

# Rebuild Rules
re: fclean all

.PHONY: all clean fclean re bonus

