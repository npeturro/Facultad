/*Imprimir en la consola los números del 1 al 100 con while o do while.*/


#include <stdio.h>
#include <stdlib.h>

int main(){
    int i;
    i = 0;
    do 
    {
        i ++;
        printf("%d\n", i);
    } while (i<100);
    system ("pause");
}

