# Makefile to produce HTML slide deck from *.md files

``` Makefile

# Setup some variables and macros
include vars.mk

MDFILES=$(wildcard *.md)
HTMLFILES=$(MDFILES:md=html)
MD1FILES=$(MDFILES:md=md1)
MD2FILES=$(MDFILES:md=md2)
NFILES=$(MDFILES:md=n)

# Our top level target
all: htmlfiles md1files

nfiles: $(NFILES)

md1files: $(MD1FILES)

md2files: $(MD2FILES)

htmlfiles: bplate $(HTMLFILES)
	FIRST=$$(head -1 deck.slides | sed -e 's/md/html/'); ln $$FIRST index.html

# Our pattern rule to create a foo.n from a foo.md
%.n : %.md
	$(MKNBOR) $< $@

%.hn: %.n
	$(NBORSUB) $< $@

# Run the   template processor on a .n file to create a .md1 file 
%.md1: %.n
	$(TMPLPROC) -r ./bplate_lib.rb nbor=$< bplate.erb > $@

# Run the template processor to convert .md file to .md2 as input to Markdown processor
%.md2: %.hn
	$(TMPLPROC) -r ./bplate_lib.rb nbor=$< bplate.erb > $@
	

# Create our .html files from our .md1 output from last step
%.html: %.md2
	$(MARKPROC) $< > $@


# Create Boilerplate files
bplate: deck.title deck.footer

deck.title:
	head -1 ../README.md > deck.title

deck.footer:
	./mkfooter.sh





clean:
	$(RM) $(NFILES) $(MD1FILES) $(MD2FILES) $(HTMLFILES) deck.title deck.footer index.html

```
