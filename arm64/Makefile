# # Name of the final executable
# NAME = my_program

# # Directory for source files
# SRC_DIR = src/

# # Directory for object files
# OBJ_DIR = obj/

# # List of source assembly files
# SRCS = $(SRC_DIR)ft_read.s \

# # Assembler and linker
# AS = as
# CC = cc

# # Assembler flags
# ASFLAGS = -arch arm64 -g  # Generate debugging information, specific to ARM64

# # Object files (replace .s with .o, while maintaining subdirectories)
# OBJS = $(patsubst $(SRC_DIR)%.s, $(OBJ_DIR)%.o, $(SRCS))

# # Create directories if needed
# MAKE_DIR = mkdir -p

# # Rule to build everything
# all: $(NAME)

# # Rule to link object files and create the final executable using CC
# $(NAME): $(OBJS)
# 	$(CC) $(OBJS) -o $(NAME) -e _start  # Specify entry point as _start

# # Rule to assemble .s files into .o files
# $(OBJ_DIR)%.o: $(SRC_DIR)%.s
# 	@$(MAKE_DIR) $(dir $@)
# 	$(AS) $(ASFLAGS) $< -o $@

# # Clean object files
# clean:
# 	rm -rf $(OBJ_DIR)

# # Clean everything including the executable
# fclean: clean
# 	rm -f $(NAME)

# # Rebuild everything
# re: fclean all

# .PHONY: all clean fclean re

# $(NAME): $(OBJS)
# 	ld -macosx_version_min 11.0.0 -o $(NAME) $(OBJS) -lSystem -syslibroot \
# 		`xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

# $(OBJ_DIR)ft_read.o: $(SRC_DIR)ft_read.s
# 	as -o $(OBJ_DIR)ft_read.o $(SRC_DIR)ft_read.s

# Variables
NAME = libasm_arm
SRC_DIR = src/
OBJ_DIR = obj/
BONUS_DIR = bonus/

SRCS = $(SRC_DIR)ft_read.s # $(SRC_DIR)ft_strdup.s$(SRC_DIR)ft_strlen.s $(SRC_DIR)ft_strcpy.s $(SRC_DIR)ft_strcmp.s $(SRC_DIR)ft_write.s 
OBJS = $(addprefix $(OBJ_DIR), $(notdir $(SRCS:.s=.o)))

BONUS_SRCS = $(BONUS_DIR)ft_list_remove_if.s $(BONUS_DIR)ft_list_sort.s $(BONUS_DIR)ft_atoi_base.s $(BONUS_DIR)ft_list_size.s $(BONUS_DIR)ft_list_push_front.s
BONUS_OBJS = $(addprefix $(OBJ_DIR), $(notdir $(BONUS_SRCS:.s=.o)))

AS = as
LD = ld
SDK_PATH = `xcrun -sdk macosx --show-sdk-path`
ARCH_FLAGS = -arch arm64
LD_FLAGS = -macosx_version_min 11.0.0 -lSystem -syslibroot $(SDK_PATH) -e _start

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
