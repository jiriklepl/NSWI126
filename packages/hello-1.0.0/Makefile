.PHONY: all clean install

all: binary

install: bin/hello
	mv $^ $(DESTDIR)

binary: bin/hello

bin/hello: src/main.cpp include/hello.hpp bin
	$(CXX) -o $@ -Iinclude $<

bin:
	mkdir bin

clean:
	$(RM) bin/*
