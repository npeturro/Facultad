/*Ingresar por teclado dos números, determinar cuál es el mayor y visualizarlo en
pantalla.*/

#include <stdio.h>
#include <stdlib.h> 

int main()
{
    int valor1;
    int valor2;
    printf("Ingrese el primer valor\n");
    scanf("%d",&valor1);
    printf("Ingrese el segundo valor\n");
    scanf("%d",&valor2);
    if (valor1 >= valor2)
    {
        if (valor1 == valor2)
        {
            printf ("Los numeros son iguales\n");
        }
        else
        {
            printf ("El valor %d es el mayor\n", valor1);
        }  
    }
    else
    {
        printf ("El valor %d es el mayor\n", valor2);
    }
    system("pause");
}
