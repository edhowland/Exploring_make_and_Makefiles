MD1FILES=$(wildcard *.md1)
MDFILES=$(MD1FILES:md1=md)

all: mds

mds: $(MDFILES)

%.md: %.md1
	cp $< $@


clean:
	$(RM) $(MDFILES)
