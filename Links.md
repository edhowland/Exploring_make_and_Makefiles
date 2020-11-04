# Links to learn more

## Videos

[Introduction to make and GNU autotools](https://www.youtube.com/watch?v=WFLvcMiG38w)

## Selected pages from the manual

[Wildcard macro](https://www.gnu.org/software/make/manual/html_node/Wildcard-Function.html)

## Macros

[GNU make variables and macros](https://www.dummies.com/computers/operating-systems/linux/linux-variables-or-macros-in-the-gnu-make-utility/)






## Topic links

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

