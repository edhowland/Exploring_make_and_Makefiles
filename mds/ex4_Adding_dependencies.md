

# Exploring make and Makefiles

***
[Prev](ex3_two_targets.md)  [Next](ex5_adding_common_variables.md)
***

# Adding a header file dependency to our source



``` bash

$ ls
greet.c  greet.h  main.c  Makefile 
```

``` Makefile
#Adding .h header dependencies to .o files

hello: greet.o main.o
	gcc -o hello main.o greet.o

greet.o: greet.c greet.h

main.o: main.c greet.h

# A pseudo target to clean up artifacts created by compiler
clean:
	rm -f *.o hello
```


## Calling make

``` bash
$ make
cc    -c -o greet.o greet.c
cc    -c -o main.o main.c
gcc -o hello main.o greet.o
$ touch greet.c
$ make
cc    -c -o greet.o greet.c
gcc -o hello main.o greet.o
$ touch greet.h
$ make
cc    -c -o greet.o greet.c
cc    -c -o main.o main.c
gcc -o hello main.o greet.o
$ ./hello 
Hello World!
$ 

```

***
[Prev](ex3_two_targets.md)  [Next](ex5_adding_common_variables.md)
***
copyright Ed Howland 2020 email: ed.howland@gmail.com

