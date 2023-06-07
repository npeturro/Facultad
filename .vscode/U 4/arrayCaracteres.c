
char cadena4[100] = ""; // Crea un array de caracteres de 100, vacio.

//Biblioteca <string.h>
//strcat concatena arrays de caracteres
//strcpy(a,b) copia lo que esta en A a B
//strlen devuelve la longitud del texto 
//strcmp devuelve 0 si dos cadenas son iguales o un valor menor que 0 si no son iguales
//Es una forma de comparar dos cadenas (elementos) y te devuelva si es correcto o no

int main()
{
 /* Funciones de la libreria string.h
 strcpy(arg1, arg2) Copia arg2 en arg1.
 strlen(arg1) Devuelve la longitud del texto representado por arg1.
 strcat(arg1, arg2) Concatena las cadenas representadas por arg1 y arg2
 strcmp(arg1, arg2) Devuelve 0 si las cadenas representadas por
 arg1 y arg2 son iguales, o un valor menor que cero si arg1 precede
 alfabéticamente a arg2.
 */
 char cadena1[] = "Hola"; //cuando inicializo de esta forma, se agregael caracter nulo \0
 char cadena2[] = ", como estas?";
 printf("Tamaño del array cadena1: %d\n\n", sizeof(cadena1)); //5, sizeof devuelve el TAMAÑO del array
 printf("Longitud del texto del array cadena1: %d\n\n", strlen(cadena1)); //4, strlen devuelve la LONGITUD del texto "Hola"
 int longitud = strlen(cadena1);
 char cadena3[longitud]; //declaro array de tamaño 4
 printf("Tamaño del array cadena3: %d\n\n", sizeof(cadena3)); //4

 char cadena4[100] = "";
 strcat(cadena4, cadena1); //strcat, concatena lo que tiene cadena4 más lo que tiene cadena 1..
 strcat(cadena4, cadena2);
 printf("Texto de cadena4: %s\n\n", cadena4);
 system("pause");
 return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

void main()
{
    char cadena1[] = "Hola"; 
    char cadena2[] = ", como estas?";

    strcat(cadena1, cadena2);

    printf("%s\n", cadena1);
    printf("%d\n", strlen(cadena1));
    system("pause");

}

