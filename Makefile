# Flags to pass to compiler 
CFLAGS = -Wall -std=c99

CC = gcc
EXECS = vm
OBJECTS = main.c

.PHONY: all clean
all: $(EXECS)

vm: $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f $(EXECS)
