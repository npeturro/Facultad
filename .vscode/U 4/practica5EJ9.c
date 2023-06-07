/*Escriba un programa que lea 5 números por teclado, los copie a otro array
multiplicados por 2 y muestre el segundo array.*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int primer_array[5];
    int segundo_array[5];
    int valor_ingresado;
    int x = 0;

    
    for (int i = 0; i < 5; i++)
    {
        printf("Ingrese un valor\n");
        scanf ("%d", &valor_ingresado);

        primer_array[i] = valor_ingresado;

    }
    
    printf("Los valores ingresados, multiplicados X2 dieron como resultado");

    for (int i = 0; i < 5; i++)
    {
        segundo_array[i] = 2 * primer_array [i];
        printf (" %d ", segundo_array[i]);
    }
       
    printf ("\n");
    system("pause");


}