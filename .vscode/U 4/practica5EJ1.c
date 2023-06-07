/*Declarar un array de tipo entero de 5 elementos, asignarles un valor, mostrar de la
forma: “Índice: X, Valor: Y” en el orden ingresado y de atrás hacia adelante.*/

#include <stdio.h>
#include <stdlib.h>

void main()
{
    int array_elementos[5] = {10,11,12,13,14};
    int i=0;

    printf("De adelante hacia atras\n");
    for (i=0; i < 5; i++)
    {
        //En el array se le debe asignar que elemento o valor mostrar
        //q en este caso es la posicion que utiliza en i
        printf ("El indice es %d y el valor es %d\n", i, array_elementos[i]);
    }
    printf("---------------------------\n");
    printf("De atras hacia adelante\n");
    for (i=4; i >= 0; i--)
    {
        printf ("El indice es %d y el valor es %d\n", i, array_elementos[i]);
    
    }

}

