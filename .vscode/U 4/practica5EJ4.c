/*Dado el vector {10, 20, 5, 15, 30, 20}
- Informar el vector de la forma: "Indice: X, Valor: Y".
- Totalizar el vector e informar el total.
- Informar el contenido de las posiciones impares.
- Informar las posiciones que contienen números impares.
- Informar el mayor número.
- Informar cuántas veces aparece el número 20.
*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int vector[6] = {10,20,5,15,30,20};
    int i = 0, contador = 0, valor_mayor = 0, total = 0, cantidad_veinte = 0;

    for (i = 0; i < 6; i++)
    {
        printf ("El indice es %d y el valor es %d\n", i, vector[i]);
        total = total + vector[i];

        if ((vector[i] % 2) != 0){
            printf ("El valor del indice es impar, el valor es %d\n", vector[i]);
        }
        if ((vector[i] % 2) == 0){
            printf ("El valor del indice %d es par, con un valor de %d\n", i, vector[i]);
        }
        if (vector[i] > valor_mayor){
            valor_mayor = vector[i];
        }
        if (vector[i] == 20){
            cantidad_veinte ++;
        }


    }
    
    printf ("El total es %d\n", total);
    printf("El valor 20 aparece %d\n", cantidad_veinte);
    printf("El mayor valor es %d\n", valor_mayor);

    system("pause");


}