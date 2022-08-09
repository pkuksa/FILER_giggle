BIN=bin
OBJ=obj

all: htslib
	@mkdir -p $(OBJ)
	@mkdir -p $(BIN)
	cd src; $(MAKE)

htslib:
	$(shell cd lib/htslib && autoreconf) # for Mac OS may need to use specific autoconf version, e.g., 2.69
	cd lib/htslib; ./configure --disable-bz2 --disable-lzma --enable-libcurl
	$(MAKE) -C lib/htslib

server:
	@mkdir -p $(OBJ)
	@mkdir -p $(BIN)
	cd src; $(MAKE) server

clean:
	rm -rf $(BIN)/*
	rm -rf $(OBJ)/*
	cd lib/htslib && $(MAKE) clean
