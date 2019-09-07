TARGET = libso.so

CC = g++
SRC = so.cpp
OBJ = $(patsubst %.cpp,%.o,$(SRC))

CPPFLAGS += -fPIC -g -Wall -I./
LDFLAGS += -shared -fPIC

all: $(OBJ)
	$(CC) $(LDFLAGS) -o $(TARGET) $^

%.o: %.cpp
	$(CC) $(CPPFLAGS) -c -o $@ $<

.PHONY: all clean

clean:
	rm -f $(TARGET) $(OBJ)
