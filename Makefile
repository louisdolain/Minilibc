## EPITECH PROJECT, 2023
## Makefile
## File description:
## Makefile

SRC_DIR     = 	./src/
ASM_FILES   =	$(SRC_DIR)strlen.asm		\
				$(SRC_DIR)strchr.asm		\
				$(SRC_DIR)strrchr.asm		\
				$(SRC_DIR)strcmp.asm		\
				$(SRC_DIR)strncmp.asm		\
				$(SRC_DIR)strcasecmp.asm	\
				$(SRC_DIR)memset.asm		\
				$(SRC_DIR)memcpy.asm		\
				$(SRC_DIR)memmove.asm		\
				$(SRC_DIR)strstr.asm		\
				$(SRC_DIR)strpbrk.asm		\
				$(SRC_DIR)strcspn.asm		\

OBJ_FILES   = 	$(ASM_FILES:.asm=.o)
NAME        = 	libasm.so

NASM        = 	nasm
LD          = 	ld
NASM_FLAGS  = 	-f elf64
LD_FLAGS    = 	-shared -o

all: $(NAME)

$(NAME): $(OBJ_FILES)
	$(LD) $(LD_FLAGS) $(NAME) $(OBJ_FILES)

%.o: %.asm
	$(NASM) $(NASM_FLAGS) $< -o $@

clean:
	rm -f $(OBJ_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re