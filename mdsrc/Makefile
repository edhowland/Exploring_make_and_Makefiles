# Makefile to produce HTML slide deck from *.md files

# Setup some variables and macros
SHELL:=/bin/bash

MDFILES=$(wildcard *.md)
MD1FILES=$(MDFILES:md=md1)
NFILES=$(MDFILES:md=n)

# Our top level target
all: md1files

nfiles: $(NFILES)

md1files: bplate $(MD1FILES)

# Our pattern rule to create a foo.n from a foo.md
%.n : %.md
	./mknbor.sh $< $@

# Run the ERb template processor on a .n file to create a .md1 file input to Markdown processor
%.md1: %.n
	erb nbor=$< bplate.erb > $@


# Create Boilerplate files
bplate: deck.title deck.footer

deck.title:
	head -1 ../README.md > deck.title

deck.footer:
	./mkfooter.sh





clean:
	$(RM) $(NFILES) $(MD1FILES) deck.title deck.footer
