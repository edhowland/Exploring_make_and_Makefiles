

# Exploring make and Makefiles

***
[Prev](ex2_multiple_c_sources.md)  [Next](ex4_Adding_dependencies.md)
***

# A Makefile with 2 targets

``` Makefile
# A Makefile with 2 targets

hello: greet.o main.o
  gcc -o hello main.o greet.o

# A pseudo target to clean up artifacts created by compiler
clean:
  rm -f *.o hello
```

## Trying it out


``` bash
$ make
cc    -c -o greet.o greet.c
cc    -c -o main.o main.c
gcc -o hello main.o greet.o
$ 
$ #
$ ./hello 
Hello World!
$
$ make
make: 'hello' is up to date.
$ make clean
rm -f *.o hello
$ make
cc    -c -o greet.o greet.c
cc    -c -o main.o main.c
gcc -o hello main.o greet.o
```


***
[Prev](ex2_multiple_c_sources.md)  [Next](ex4_Adding_dependencies.md)
***
copyright Ed Howland 2020 email: ed.howland@gmail.com

