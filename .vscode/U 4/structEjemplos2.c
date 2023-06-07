#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct ficha
{
    char nombre[80];
    int edad;
    float peso;
};


int main()
{
    struct ficha fichas[3];

    for (int i = 0; i < 3; i++){
        printf("Ingrese el nombre del usuario %d\n", i+1);
        scanf("%s", &fichas[i].nombre);
        printf("Ingrese la edad del usuario %d\n", i+1);
        scanf("%d", &fichas[i].edad);
        printf("Ingrese el peso del usuario %d\n", i+1);
        scanf("%f", &fichas[i].peso);
    } 


    for (int i = 0; i < 3; i++){

        printf("Nombre del usuario %d: %s\n", i+1, fichas[i].nombre);
        printf("Edad del usuario %d: %d\n", i+1, fichas[i].edad);
        printf("Peso del usuario %d: %0.2f\n", i+1, fichas[i].peso);
        
    }

    system("pause");

}