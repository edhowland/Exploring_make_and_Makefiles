# Extending our example with 2 files

```bash

$ ls
greet.c  main.c  Makefile 
```

## Our Makefile

```make
hello: greet.o main.o
	gcc -o hello main.o greet.o

```


Note the 'gcc' line is indented by a single tab character.


## Making hello

```bash
$ make
cc    -c -o greet.o greet.c
cc    -c -o main.o main.c
gcc -o hello main.o greet.o
```

## Running our program

```bash
$ ./hello 
Hello World!

```


