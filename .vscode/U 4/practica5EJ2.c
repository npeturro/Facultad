/*Declarar un array de tipo entero de 5 componentes, asignarles un valor, mostrar la
suma de sus componentes y el promedio.*/

#include <stdio.h>
#include <stdlib.h>

int main ()
{
    int array_ejemplo[5] = {10,5,27,32,10};
    int i = 0;
    float sumador = 0; 
    float promedio = 0;


    for (i = 0; i < 5; i++)
    {
        sumador = sumador + array_ejemplo[i];

    }

    promedio = sumador / 5;

    printf("El total de la suma es de %.0f y el promedio es de %0.2f\n", sumador, promedio);

    system ("pause");
    return 0;
}