

# Exploring make and Makefiles

***
[Prev](ex5_adding_common_variables.md)  [Next](ex7_add_new_target_goodbye.md)
***

# Improve our Makefile by eliminating redundencies

``` Makefile
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

```

***
[Prev](ex5_adding_common_variables.md)  [Next](ex7_add_new_target_goodbye.md)
***
copyright Ed Howland 2020 email: ed.howland@gmail.com

