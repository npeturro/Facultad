/*Dado un número introducido por el usuario, indicar si este es positivo, negativo o nulo.*/

#include <stdio.h>
#include <stdlib.h> 

int main()
{
    int valor1;
    printf("Ingrese el valor\n");
    scanf("%d",&valor1);
    if (valor1 == 0){
        printf("El numero es nulo\n");
    }
    else if (valor1 > 0){
        printf("El numero es positivo\n");
    }
    else{
        printf("El numero es negativo\n");
    }
    system("pause");
}