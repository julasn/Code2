#include <stdio.h>
#include "pole.h"
#include "objetosc.h"
int main (void){	

	int a, b, c;
	printf("podaj dlugosc\n");
	scanf("%5d", & a);
	printf("podaj szerokosc\n");
	scanf("%5d", & b);
	printf("podaj wysokosc\n");
	scanf("%5d", & c);
	printf("pole wynosi: %d",liczpole(a,b));
	printf("\n");
    	printf ("objetosc wynosi: %d", liczobjetosc(a,b,c));
    
    	return 0;
}
