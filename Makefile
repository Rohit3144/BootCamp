CC=gcc
CFLAGS=-I.
SWACHH=rm

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: hellomake.o hellofunc.o 
	$(CC) -o hellomake hellomake.o hellofunc.o

calculator: calculator.o sum.o sub.o multi.o div.o
	$(CC) -o calculator calculator.o sum.o sub.o multi.o div.o

swachh:
	$(SWACHH) -rf *.o calculator hellomake

all: calculator hellomake
