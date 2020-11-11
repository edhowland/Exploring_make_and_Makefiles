

# Exploring make and Makefiles

***
[Prev](ex4_Adding_dependencies.md)  [Next](ex6_improve_by_removing_repeats.md)
***

# Adding common variables to our cc targets

``` Makefile

CFLAGS= -Wall -Werror

hello: greet.o main.o
	gcc -o hello main.o greet.o

greet.o: greet.c greet.h
	$(CC) $(CFLAGS) -c greet.c

main.o: main.c greet.h
	$(CC) $(CFLAGS) -c main.c

# A pseudo target to clean up artifacts created by compiler
clean:
	rm -f *.o hello

```

***
[Prev](ex4_Adding_dependencies.md)  [Next](ex6_improve_by_removing_repeats.md)
***
copyright Ed Howland 2020 email: ed.howland@gmail.com

