/*Ingresar un conjunto de números reales distintos de cero. 
Para finalizar la entrada de datos, ingresar un cero.
Determinar e informar la cantidad de números que lo forman.*/

#include <stdio.h>
#include <stdlib.h>

void main()
{
    int numero_ingresado = 1, contador = 0; 
    
    while (numero_ingresado != 0)
    {
        printf("Ingrese un numero. (Ingrese un 0 para finalizar)\n");
        scanf("%d", &numero_ingresado);
        contador = contador + 1;

    }    

    printf("El total de numeros ingresados es de %d\n", (contador - 1));
    system ("pause");
    
}