
Code2: Code2.o pole.a objetosc.a
	gcc -o $@ $^
Code2.o: Code2.c pole.h objetosc.h
	gcc -c $<
pole.o: pole.c
	gcc -c $<
objetosc.o: objetosc.c
	gcc -c $<
pole.a: pole.o
	ar rs $@ $<
objetosc.a: objetosc.o
	ar rs $@ $<
clean:
	rm -f Code2 *.o *.a 
install:
	sudo apt install Code2
