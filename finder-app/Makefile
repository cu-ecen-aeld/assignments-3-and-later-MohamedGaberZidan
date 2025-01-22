CC = gcc
CFLAGS = -Wall -Werror

CROSS_COMPILE ?= 

TARGET = writer
SRC = writer.c

$(TARGET): $(SRC)
	$(CROSS_COMPILE)$(CC) $(CFLAGS) -o $(TARGET) $(SRC)
clean:
	rm -f writer

.PHONY: clean
