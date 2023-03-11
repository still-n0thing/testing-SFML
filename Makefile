# Usage:
# make        # compile all binary
# make clean  # remove ALL binaries and objects

.PHONY = all clean

CC = g++			# compiler to use

LINKERFLAG = -o sfml-app -lsfml-graphics -lsfml-window -lsfml-system

SRCS := main.c
BINS := main

all: main

main: main.o
	@echo "Checking.."
	$(CC) main.o $(LINKERFLAG)

main.o: main.cpp
	@echo "Creating object.."
	$(CC) -c main.cpp

clean:
	@echo "Cleaning up..."
	rm -rvf main.o main

run:
	./sfml-app