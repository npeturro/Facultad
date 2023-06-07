/*Ingresar el valor de la hora y el tiempo trabajado por un comerciante, calcular su
sueldo e imprimirlo */

#include <stdio.h>
#include <stdlib.h>

int main(){
    int valor_hora;
    int horas_trabajo;
    printf("Ingrese el valor por horas trabajadas\n");
    scanf("%d",&valor_hora);
    printf("Ingrese el tiempo trabajado\n");
    scanf("%d",&horas_trabajo); 
    printf("El sueldo a abonar es: $%d\n", valor_hora * horas_trabajo);
    system("pause");
}