

# Exploring make and Makefiles

***
[Prev](ex6_improve_by_removing_repeats.md)  [Next](ex8_macros.md)
***

# Add a new target: The goodbye program
``` Makefile

CFLAGS= -Wall -Werror

# Local variables/macros
PROGS=hello goodbye
OBJS=hail.o main.o farewell.o

all: $(PROGS)


hello: hail.o main.o
	$(CC) -o $@ $^


goodbye: main.o farewell.o
	$(CC) -o $@ $^

# A pattern rule to control  creating .o files out of .c files
%.o: %.c
	$(CC) $(CFLAGS) -c $<

hail.o: hail.c aloha.h

farewell.o: farewell.c aloha.h

main.o: main.c aloha.h

# A pseudo target to clean up artifacts created by compiler
clean:
	$(RM) $(OBJS) $(PROGS)

```

***
[Prev](ex6_improve_by_removing_repeats.md)  [Next](ex8_macros.md)
***
copyright Ed Howland 2020 email: ed.howland@gmail.com

