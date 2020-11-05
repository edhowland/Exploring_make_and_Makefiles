# Makefile to produce HTML slide deck from *.md files

# Setup some variables and macros
include vars.mk
MDFILES=$(wildcard *.md)
HTMLFILES=$(MDFILES:md=html)
MD1FILES=$(MDFILES:md=md1)
NFILES=$(MDFILES:md=n)

# Our top level target
all: htmlfiles

nfiles: $(NFILES)

md1files: $(MD1FILES)

htmlfiles: bplate $(HTMLFILES)

# Our pattern rule to create a foo.n from a foo.md
%.n : %.md
	./mknbor.sh $< $@

# Run the   template processor on a .n file to create a .md1 file input to Markdown processor
%.md1: %.n
	$(TMPLPROC) -r ./bplate_lib.rb nbor=$< bplate.erb > $@

# Create our .html files from our .md1 output from last step
%.html: %.md1
	$(MARKPROC) $< > $@


# Create Boilerplate files
bplate: deck.title deck.footer

deck.title:
	head -1 ../README.md > deck.title

deck.footer:
	./mkfooter.sh





clean:
	$(RM) $(NFILES) $(MD1FILES) $(HTMLFILES) deck.title deck.footer
