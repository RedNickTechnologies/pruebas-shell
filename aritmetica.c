#include <stdio.h>

int main(){

	printf("Ahora se imprimira una suma entre 2 elementos \n");
	int numeroUno;
	int numeroDos;
	int resultado;
	int verdadero;
	verdadero=1;

while (verdadero){
	printf("Escriba el primer numero: \n");
	scanf("%i", &numeroUno);
	printf("Escriba el segundo numero: \n");
	scanf("%i", &numeroDos);

	resultado= numeroUno + numeroDos;
	
	printf("El resultado de la suma de los dos numeros es: \n");
	printf("%i",resultado);
	printf(" \n");
	}
}
