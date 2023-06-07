/*Declarar un array de tipo entero de 5 componentes, asignarles un valor por consola,
mostrar cuántas veces se repite el número 5.*/

#include <stdio.h>
#include <stdlib.h>

int main ()
{
    int array_ejemplo[5];
    int contador = 0;

    for (int i = 0; i < 5; i++)
    {
        printf("Ingrese un valor\n");
        scanf("%d", &array_ejemplo[i]);

        if (array_ejemplo[i] == 5){
            contador++;
        }

    }

    printf("El valor 5 se repite %d veces\n", contador);
    system("pause");

}