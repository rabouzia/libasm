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

$(NAME): $(OBJS)
	ld -macosx_version_min 11.0.0 -o $(NAME) $(OBJS) -lSystem -syslibroot \
		`xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

$(OBJ_DIR)ft_read.o: $(SRC_DIR)ft_read.s
	as -o $(OBJ_DIR)ft_read.o $(SRC_DIR)ft_read.s