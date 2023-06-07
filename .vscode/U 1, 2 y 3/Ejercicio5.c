/* El usuario debe poder ingresar los lados de un rectángulo y el programa calcula con
esos datos la diagonal principal del rectángulo, superficie y perímetro. Mostrar al
usuario los resultado */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
    int lado1;
    int lado2;
    int hipotenusa;
    int perimetro;
    int superficie;
    printf("Ingrese el valor del primer lado\n");
    scanf("%d",&lado1);
    printf("Ingrese el valor del segundo lado\n");
    scanf("%d",&lado2);
    hipotenusa = sqrt(lado1*lado1 + lado2*lado2);
    perimetro = lado1 * 2 + lado2 * 2;
    superficie = lado1 * lado2; 
    printf("El resultado de la hipotenusa es:%d\n", hipotenusa);
    printf("El resultado del perimetro es:%d\n", perimetro);
    printf("El resultado de la superficie es:%d\n", superficie);
    system("pause");
}