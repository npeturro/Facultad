/*Leer por consola notas hasta que el usuario
lo indique e informar su suma y promedio*/

#include <stdio.h>
#include <stdlib.h>

void main()
{
    int notas = 0;
    int i = 1;
    int acumulador, continuar = 1, promedio;

    for (i = 1; i >= 1; i ++ )
    {
        while (continuar == 1)
        {    
            printf ("---------------\n");
            notas += 1;
            acumulador += notas;
            printf("%d\n", notas);
            printf ("---------------\n");
            printf("Desea continuar?\n");
            printf("1. Si\n");
            printf("2. No\n");
            scanf("%d", &continuar);
        }

    }

    promedio = acumulador / notas;
    printf ("El total de los numeros es de %d y el promedio es de %d\n", acumulador, promedio);
    system ("pause");

}