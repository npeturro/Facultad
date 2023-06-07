/*Diseñar e implementar un programa que solicite a su usuario un valor no negativo n y
visualice la siguiente salida:*/

#include <stdio.h>
#include <stdlib.h>


int main ()
{
    int i, j;

    for ( i = 10; i >= 0; i--) {
        
        for ( j = 0; j < i; j++){
            printf("%d %d", i, j);    
        }
        printf("\n");
        
    }

    system("pause");

}