# A Makefile with 2 targets

hello: greet.o main.o
	gcc -o hello main.o greet.o

# A pseudo target to clean up artifacts created by compiler
clean:
	rm -f *.o hello
