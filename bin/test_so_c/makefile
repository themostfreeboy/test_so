TARGET = test_so_c

CC = gcc
SRC = test_so_c.c
OBJ = $(patsubst %.c,%.o,$(SRC))

CFLAGS += -g -Wall -I./ -I../../so
LDFLAGS += -L ../../so -lso

all: $(OBJ)
	$(CC) $(LDFLAGS) -o $(TARGET) $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: all clean

clean:
	rm -f $(TARGET) $(OBJ)
