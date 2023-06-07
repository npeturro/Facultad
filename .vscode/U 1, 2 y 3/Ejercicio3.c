#include <stdio.h>
#include <stdlib.h>

int main(){
    int lado1;
    int lado2;
    int lado3;
    int resultado;
    printf("Ingrese el valor del primer lado\n");
    scanf("%d",&lado1);
    printf("Ingrese el valor del segundo lado\n");
    scanf("%d",&lado2);
    printf("Ingrese el valor del tercer lado\n");
    scanf("%d",&lado3);
    resultado = lado1 + lado2 + lado3;
    printf("El perimetro del triangulo es:%d\n", resultado);
    system("pause");
}