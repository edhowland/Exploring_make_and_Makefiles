

# Exploring make and Makefiles

***
[Prev](ex1_simple_C.md)  [Next](ex3_two_targets.md)
***

# Extending our example with 2 files

``` bash

$ ls
greet.c  main.c  Makefile 
```

## Our Makefile

``` Makefile
hello: greet.o main.o
	gcc -o hello main.o greet.o

```


Note the 'gcc' line is indented by a single tab character.


## Making hello

``` bash
$ make
cc    -c -o greet.o greet.c
cc    -c -o main.o main.c
gcc -o hello main.o greet.o
```

## Running our program

``` bash
$ ./hello 
Hello World!

```



***
[Prev](ex1_simple_C.md)  [Next](ex3_two_targets.md)
***
copyright Ed Howland 2020 email: ed.howland@gmail.com

