/*Declarar un array de tipo decimal, que el usuario ingrese la cantidad de notas a cargar,
leer las notas por consola, mostrar la suma de sus componentes y el promedio.*/


#include <stdio.h>
#include <stdlib.h>

int main()
{
    int cantidad_notas = 0;
    float notas_cantidad[cantidad_notas];
    float notas_usuario = 0, sumador = 0, promedio = 0;
    
    printf("Ingrese la cantidad de notas que va a ingresar\n");
    scanf("%d", &cantidad_notas);

    for (int i = 0; i < cantidad_notas; i++)
    {
        printf("Ingrese la nota del usuario\n");
        scanf("%f", &notas_usuario);
        if (notas_usuario > 0 && notas_usuario <= 10){
            notas_cantidad[i] = notas_usuario;
            sumador += notas_usuario;
        }
        else{
            printf("Valor incorrecto");
            return 0;
        }

    }

    promedio = sumador / cantidad_notas;
    printf("Las notas ingresadas fueron ");
    
    for (int i = 0; i < cantidad_notas; i++)
    {
        printf (" %0.2f ", notas_cantidad[i]);
    }
    printf("\nCon un total de %0.2f y un promedio del %0.2f porciento\n", sumador, promedio);

    system("pause");

}