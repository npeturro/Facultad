/*Leer 10 números por teclado, 5 para un array y 5 para otro array distinto. Mostrar los
10 números en pantalla mediante un solo array.*/


#include <stdio.h>
#include <stdlib.h>

int main()
{
    int primer_array[5];
    int segundo_array[5];
    int tercer_array[10];
    int valor_ingresado;
    int x = 0;

    
    for (int i = 0; i < 10; i++)
    {
        printf("Ingrese un valor\n");
        scanf ("%d", &valor_ingresado);
        if (i >= 0 && i < 5){
            primer_array[i] = valor_ingresado;
        }
        if (i >= 5 && i < 10){
            x = i - 5;
            segundo_array[x] = valor_ingresado;
        }
        
    }
    
    x = 0;

    printf ("Los valores ingresados son ");
    for (int i = 0; i < 10; i++)
    {
        if (i < 5)
        {
            tercer_array[i] = primer_array [i];
            printf ("%d ", tercer_array[i]);
        }
        if (i >= 5 && i < 10)
        {
            x = i - 5;
            tercer_array[i] = segundo_array[x];
            printf (" %d", tercer_array[i]);
        }   
    }
    printf("\n");
    system("pause");


}