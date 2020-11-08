# Improve our Makefile by eliminating redundencies

CFLAGS= -Wall -Werror

hello: greet.o main.o
	gcc -o hello main.o greet.o

# A pattern rule to control  creating .o files out of .c files
%.o: %.c
	$(CC) $(CFLAGS) -c $<

greet.o: greet.c greet.h

main.o: main.c greet.h

# A pseudo target to clean up artifacts created by compiler
clean:
	$(RM) *.o hello
