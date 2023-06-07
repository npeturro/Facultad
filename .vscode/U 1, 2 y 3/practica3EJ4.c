//Imprimir la suma de los números impares que se encuentran entre los números 1 y 10.

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i;
    int contador = 0;

    for (i=1; i<=10; i+=2)
    {
        printf("%d\n", i);
        printf(" - \n");
        contador = contador + i;
    }
    printf("La suma de los numeros impares es de %d\n", contador);
    system ("pause");
}

