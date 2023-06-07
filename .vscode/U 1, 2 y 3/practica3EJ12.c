/*Imprimir por consola 10 renglones, de manera que se visualice la siguiente salida:*/


#include <stdio.h>
#include <stdlib.h>


int main ()
{
    int i, j;

    for ( i = 0; i < 10; i++) {
        
        for ( j = 0; j <= i; j++){
            printf("@");    
        }
        printf("\n");
        
    }

    system("pause");

}