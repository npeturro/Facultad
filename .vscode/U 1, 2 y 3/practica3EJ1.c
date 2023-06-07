//Imprimir en la consola los números del 1 al 100


#include <stdio.h>
#include <stdlib.h>

int main(){
    int i;

    for (i=1; i<=100; i++)
    {
        printf("%d, ", i);
    }
    // me finaliza el programa, a diferencia del system pause q lo sigue de largo
    exit(0);
}