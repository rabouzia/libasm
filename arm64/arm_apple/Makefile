# Project Name
NAME = libasm_arm_mac

# Directories
SRC_DIR = src/
OBJ_DIR = obj/

# Source and Object Files
SRCS = $(SRC_DIR)ft_strlen.s
OBJS = $(addprefix $(OBJ_DIR), $(notdir $(SRCS:.s=.o)))

# Tools and Flags
AS = as
CC = cc
SDK_PATH = `xcrun -sdk macosx --show-sdk-path`
ARCH_FLAGS = -arch arm64
LD_FLAGS = -macos_version_min 11.0 -lSystem -syslibroot $(SDK_PATH) -g3

# Default Target
all: $(NAME)

# Linking Rule
$(NAME): $(OBJS) main.c
	@echo "Linking $(NAME)..."
	@$(CC) -o $@ $^ $(ARCH_FLAGS)

# Assembly Compilation Rule
$(OBJ_DIR)%.o: $(SRC_DIR)%.s
	@mkdir -p $(OBJ_DIR)
	@echo "Assembling $<..."
	@$(AS) -o $@ $< -mmacos-version-min=11.0

# Clean Rules
clean:
	@echo "Cleaning object files..."
	@rm -rf $(OBJ_DIR)

fclean: clean
	@echo "Removing $(NAME)..."
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
