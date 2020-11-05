# Main outer Makefile. Calls sub makefiles.

all: mdsfiles

htmlfiles:
	cd mdsrc && $(MAKE)

mdsfiles: htmlfiles
	cp mdsrc/*.md1 mds/; cd mds && $(MAKE)

install:
	cp mdsrc/*.html html/

clean:
	cd mds && $(MAKE) clean
	cd mdsrc && $(MAKE) clean


