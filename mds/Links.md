

# Exploring make and Makefiles

***
[Prev](complete_ex.md)  [Next](Links.md)
***

# Links to learn more

## Videos

[Introduction to make and GNU autotools](https://www.youtube.com/watch?v=WFLvcMiG38w)

## Selected pages from the manual

[Wildcard macro](https://www.gnu.org/software/make/manual/html_node/Wildcard-Function.html)

## Macros

[GNU make variables and macros](https://www.dummies.com/computers/operating-systems/linux/linux-variables-or-macros-in-the-gnu-make-utility/)



## The GNU make manual

The following links were taken from here.
<https://www.gnu.org/software/make/>

### The GNU make manual in linked HTML format

<https://www.gnu.org/software/make/manual/html_node/index.html>


## Topic links

### Builtin pre-defined variables

<https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html>

### Automatic variables

These variables: $@, $<, $^ and $*  can be used in pattern rules.  (See below)

<https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html>

### Implicit rules

Rules that GNU make already knows how to build for you.

<ftp://ftp.gnu.org/old-gnu/Manuals/make-3.79.1/html_chapter/make_10.html>

### Pattern rules

<https://www.gnu.org/software/make/manual/html_node/Pattern-Rules.html>

### Using parameterized macros

<https://www.gnu.org/software/make/manual/html_node/Call-Function.html>

### Pattern substitutions

To modify a list of files with one extension and replace it with another extension
use the substitution reference method:
<https://www.gnu.org/software/make/manual/html_node/Substitution-Refs.html>





### Including other makefiles or makefile snippets

You might want to place common variable or macro definitions in their own file
and then include them in many different Makefile(s).

<https://www.gnu.org/software/make/manual/html_node/Include.html>


### Recursive Makefiles

If you have a large system consisting of many sub modules, each with their own
Makefile, there is a way to recurse into sub-directories and run the Makefile
found therein. Do not use 'cd sub1' and then run 'make' in an action. This is
almost  never what you want to do.

<https://www.gnu.org/software/make/manual/html_node/Recursion.html>

### The foreach function

The $(foreach var, list, text)  function can be used to create customized text
expansions from lists. These can be used to create new variables or commands
to be run in the action part of a rule.

<https://www.gnu.org/software/make/manual/html_node/Foreach-Function.html>

### The wildcard function

It is posible to get a  list of filenames from the directory using a glob pattern
with the $(wildcard *.c) function. 

<https://www.gnu.org/software/make/manual/html_node/Wildcard-Function.html>

Note, this function can be used in conjunction with the foreach function above.

## Escaping characters, strings in Makefiles

<https://www.cmcrossroads.com/article/gnu-make-escaping-walk-wild-side>


## Third party tools

### GNU Make standard Library

A set of extension functions for things like:

- Debugging
- Integers,
- Strings
- Lists
- Associative arrays

And .etc

<https://sourceforge.net/projects/gmsl/>




***
[Prev](complete_ex.md)  [Next](Links.md)
***
copyright Ed Howland 2020 email: ed.howland@gmail.com

