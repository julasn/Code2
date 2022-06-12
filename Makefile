.PHONY: clean
.SUFFIXES: .c .o .a
%.o: %.c
	gcc -c $<
lib%.a: p%.o
	ar rs $@ $<
%: %.o
	gcc -o $@ $^

Code2: Code2.o pole.a objetosc.a
Code2.o: Code2.c pole.h objetosc.h
pole.o: pole.c
objetosc.o: objetosc.c
pole.a: pole.o
objetosc.a: objetosc.o
clean:
	rm -f Code2 *.o *.a 
install:
	sudo apt install Code2
