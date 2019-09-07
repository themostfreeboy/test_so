TARGET = test_so_cpp

CC = g++
SRC = test_so_cpp.cpp
OBJ = $(patsubst %.cpp,%.o,$(SRC))

CPPFLAGS += -g -Wall -I./ -I../../so
LDFLAGS += -L ../../so -lso

all: $(OBJ)
	$(CC) $(LDFLAGS) -o $(TARGET) $^

%.o: %.cpp
	$(CC) $(CPPFLAGS) -c -o $@ $<

.PHONY: all clean

clean:
	rm -f $(TARGET) $(OBJ)
