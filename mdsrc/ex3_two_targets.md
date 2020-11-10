# A Makefile with 2 targets

```make
# A Makefile with 2 targets

hello: greet.o main.o
  gcc -o hello main.o greet.o

# A pseudo target to clean up artifacts created by compiler
clean:
  rm -f *.o hello
```

## Trying it out


```bash
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

