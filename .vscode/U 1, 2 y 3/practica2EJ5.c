/*Escriba un programa que pida ingresar un número y a continuación escriba en la
consola si el mismo es par o impar.*/

#include <stdio.h>
#include <stdlib.h> 

int main()
{
    int valor1;
    printf("Ingrese el valor\n");
    scanf("%d",&valor1); 
    if ((valor1 % 2) == 0)
    {
        printf("El numero es par\n");
    }
    else 
    {
        printf("El numero es impar\n");
    }
    system("pause");
}