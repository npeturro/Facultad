/*Ingresar el tiempo trabajado por un contador y considerando que el valor de la hora es
de 800 pesos, calcular su sueldo e imprimirlo*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int horas_trabajadas;
    int sueldo;
    printf("Ingrese el total de horas trabajadas\n");
    scanf("%d",&horas_trabajadas);
    sueldo = horas_trabajadas * 800; 
    printf("El sueldo es: %d\n", sueldo);
    system("pause");
}