/*Escribe un programa que pida tres cadenas al 
usuario y muestre sus longitudes (número de letras).*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    int i;
    char cadena1[50] = ("");
    char cadena2[50] = ("");
    char cadena3[50] = ("");

    printf("Ingrese un texto de no mas de 3 palabras\n");
    scanf("%s%s%s", &cadena1, &cadena2, &cadena3);
    

    printf("Longitud del texto del array cadena1: %d\n", strlen(cadena1));
    printf("Longitud del texto del array cadena2: %d\n", strlen(cadena2));
    printf("Longitud del texto del array cadena3: %d\n", strlen(cadena3));


    system("pause");


}