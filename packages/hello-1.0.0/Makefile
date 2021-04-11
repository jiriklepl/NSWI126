.PHONY: all clean install

all: binary

install: bin/hello $(DESTDIR)/usr/bin
	mv $< $(DESTDIR)/usr/bin/

$(DESTDIR)/usr/bin: $(DESTDIR)/usr
	mkdir $(DESTDIR)/usr/bin

$(DESTDIR)/usr:
	mkdir $(DESTDIR)/usr

binary: bin/hello

bin/hello: src/main.cpp include/hello.hpp bin
	$(CXX) -o $@ -Iinclude $<

bin:
	mkdir bin

clean:
	$(RM) bin/*
