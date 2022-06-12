
Code2: Code2.o pole.a objetosc.a
	gcc -o Code2 Code2.o pole.a objetosc.a
Code2.o: Code2.c pole.h objetosc.h
	gcc -c Code2.c
pole.o: pole.c
	gcc -c pole.c
objetosc.o: objetosc.c
	gcc -c objetosc.c
pole.a: pole.o
	ar rs pola.a pole.o
objetosc.a: objetosc.o
	ar rs objetosc.a objetosc.o
clean:
	rm -f Code2 *.o *.a 
install:
	sudo apt install Code2
