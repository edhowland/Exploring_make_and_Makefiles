all: hello

hello: greet.o main.o
	gcc -o hello main.o greet.o


clean: FORCE
	$(RM) main.o greet.o hello
FORCE:
