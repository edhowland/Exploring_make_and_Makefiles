A question came up in chat Wednesday night: How does .PHONY work in a Makefile?

Ok, let's review some terms and processes make is using. First, a rule consists
of 3 parts:

1. The target followed by a ':'
2. 0 or more dependant targets following the ':' and separated by spaces
3. Shell execution command(s) indented on the next line by a tab character.

E.g.

``` make
target: depend1 depend2 depend3
  echo do something here
```

The target can be an extant or future file  on the file system relative to the
current the directory of the make process. Or it can be a pseudo-target like
the 'all' and 'clean' targets we saw in the slides. GNU make calls these
'phony' targets instead of pseudo targets. In GNU Make, a phony  target can be
either implicit or explicit. So far, we have only seen implicit phony targets.

Consider what would happen if our directory contained a  file called: 'clean':

``` bash
$ make
cc    -c -o greet.o greet.c
cc    -c -o main.o main.c
gcc -o hello main.o greet.o
$ touch clean
$ make clean
make: 'clean' is up to date.
```

As long as the 'clean' file exists, the 'clean:' target will never get executed.

We can fix this by adding a .PHONY target to our Makefile

``` Makefile
.PHONY: clean
clean:
	$(RM) main.o greet.o hello
```

Let's try this version:

``` bash

$ ls
greet.c  greet.o  hello  main.c  main.o  Makefile 
$ touch clean
$ make clean
rm -f main.o greet.o hello
$ 
```

Now, we no longer get the message from make that the clean target is up-to-date!



You are not likely to come across this need in your own projects, at least for the 
'lean' target.  It comes up more when you make an extant subdirectory as your target
in your Makefile.. See this GNU make manual page for more:

<


<https://www.gnu.org/software/make/manual/html_node/Phony-Targets.html>


Another way to accomplish the same semantics without .PHONY is to use the 
'FORCE' target

``` Makefile
clean: FORCE
  $(RM) *.o
FORCE:
```

There is nothing special about the 'FORCE:' target, but it achieves the same result
if you are using a version of make other than GNU make which does not support
special dot targets.

<https://www.gnu.org/software/make/manual/html_node/Force-Targets.html#Force-Targets>

If you have any other thoughts, comments or disputes with this, reply here.

Regards, Ed




