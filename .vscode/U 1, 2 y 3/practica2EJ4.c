/*Ingresar por teclado tres números, determinar cuál es el mayor y visualizarlo en
pantalla.*/

#include <stdio.h>
#include <stdlib.h> 

int main()
{
    int valor1;
    int valor2;
    int valor3;
    printf("Ingrese el primer valor\n");
    scanf("%d",&valor1);
    printf("Ingrese el segundo valor\n");
    scanf("%d",&valor2);
    printf("Ingrese el tercer valor\n");
    scanf("%d",&valor3);
    
    if (valor1 == valor2 || valor2 == valor3 || valor1 == valor3)
    {
        printf("Los numeros no pueden ser iguales\n");
    }
    else
    {   
        if (valor1 >= valor2)
        {
            if (valor1 >= valor3)
            {
                printf("El valor %d es el mayor, por lo tanto es el primero ingresado\n", valor1);
            }   
            else
            {
                printf("El valor %d es el mayor, por lo tanto es el tercer ingresado\n", valor3); 
            }
        }      
        else
        {
            if (valor2 >= valor3)
            {
                printf("El valor %d es el mayor, por lo tanto es el segundo ingresado\n", valor2);
            }   
            else
            {
                printf("El valor %d es el mayor, por lo tanto es el tercer ingresado\n", valor3); 
            }
        }
    }
        system("pause");
}