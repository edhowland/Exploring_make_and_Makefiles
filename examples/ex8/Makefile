# Macros or recursive variables

CFLAGS= -Wall -Werror

# Local variables/macros
PROGS=hello goodbye
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

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

# A test target
cmds:=$(foreach x, $(PROGS), ./$(x);)
test: $(PROGS)
	$(cmds)

# A pseudo target to clean up artifacts created by compiler
clean:
	$(RM) $(OBJS) $(PROGS)
