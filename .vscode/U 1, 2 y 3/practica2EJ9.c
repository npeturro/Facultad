/*Se desea escribir un algoritmo que pida la altura de una persona, si la
altura es menor o igual a 150cm envie el msj: "Persona de altura por debajo
de la media"; si la altura esta entre 151cm y 170cm escriba el msj: "Persona
de altura media" y si la altura es mayor a 171cm escriba el msj: "Persona
de altura por arriba de la media".*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int high_person;
    printf("Ingrese la altura de la persona\n");
    scanf ("%d", &high_person);
    if (high_person <= 150){
        printf("Persona de altura por debajo de la media\n");
    }
    else{
        if (high_person <= 170){
            printf ("Persona de altura media\n");
        }
        else{
            printf("Persona de altura por arriba de la media\n");
        }
    }
    system("pause");
}