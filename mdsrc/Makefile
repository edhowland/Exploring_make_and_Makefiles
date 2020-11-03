SHELL:=/bin/bash

MDFILES=$(wildcard *.md)
NFILES=$(MDFILES:md=n)


all: $(NFILES)

# Our pattern rule to create a foo.n from a foo.md
%.n : %.md
	./mknbor.sh $< $@


clean:
	$(RM) $(NFILES)
