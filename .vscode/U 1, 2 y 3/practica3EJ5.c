//Bucle infinito.

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i;
    int contador = 0;

    for (i=2; i>1; i++)
    {
        printf("%d\n", i);
        printf(" - \n");
        contador = contador + i;
    }
    printf("%d\n", contador);
    system ("pause");
}