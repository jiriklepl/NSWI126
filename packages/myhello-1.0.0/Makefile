.PHONY: all clean install

all: binary

install: bin/myhello $(DESTDIR)/usr/bin
	mv $< $(DESTDIR)/usr/bin/

$(DESTDIR)/usr/bin: $(DESTDIR)/usr
	mkdir $(DESTDIR)/usr/bin

$(DESTDIR)/usr:
	mkdir $(DESTDIR)/usr

binary: bin/myhello

bin/myhello: src/main.cpp include/hello.hpp bin
	$(CXX) -o $@ -Iinclude $<

bin:
	mkdir bin

clean:
	$(RM) bin/*
