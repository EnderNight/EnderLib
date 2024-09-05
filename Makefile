CC=gcc
CPPFLAGS=-MMD
CFLAGS=-Wall -Wextra -Wvla -std=c99 -pedantic -Iinclude -ggdb -O0
LDFLAGS=

SRC=src/vector.c

OBJ=${SRC:.c=.o}
DEP=${OBJ:.o=.d}

BIN=enderlib

.PHONY: all $(BIN) example

all: $(BIN)

$(BIN): $(OBJ)
	ar rcs lib$(BIN).a $^

-include: $(DEP)

example: example.c
	$(CC) -fsanitize=address -Iinclude -o example example.c -L. -lenderlib

clean:
	$(RM) $(OBJ) lib$(BIN).a example
