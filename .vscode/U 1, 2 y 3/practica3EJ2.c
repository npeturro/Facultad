//Generar un bucle while infinito.


#include <stdio.h>
#include <stdlib.h>

int main(){
    int i;

    for (i=1; i<=100; i--)
    {
        printf("%d\n", i);
        printf(" - \n");
    }
    system ("pause");
}