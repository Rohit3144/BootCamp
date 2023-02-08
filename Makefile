CC=gcc
CFLAGS=-I.
SWACHH=rm

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: hellomake.o hellofunc.o 
	$(CC) -o hellomake hellomake.o hellofunc.o

calculator: calculator.o sum.o sub.o multi.o div.o
	$(CC) -o calculator calculator.o sum.o sub.o multi.o div.o

add_matrix: add_matrix.o 
	$(CC) -o add_matrix add_matrix.o

mul_matrix: mul_matrix.o 
	$(CC) -o mul_matrix mul_matrix.o

swachh:
	$(SWACHH) -rf *.o calculator hellomake add_matrix mul_matrix

all: calculator hellomake add_matrix mul_matrix
