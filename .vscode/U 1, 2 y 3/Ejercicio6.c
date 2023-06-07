/*Ingresar dos valores, calcular su suma, su producto y la resta del 1ro menos el 2do
valor ingresado, imprimir los resultados */

#include <stdio.h>
#include <stdlib.h>

int main(){
    int num1;
    int num2;
    int suma;
    int producto;
    int resta;
    printf("Ingrese el primer valor\n");
    scanf("%d",&num1);
    printf("Ingrese el segundo valor\n");
    scanf("%d",&num2);
    suma = num1 + num2;
    producto = num1 * num2;
    resta = num1 - num2; 
    printf("El resultado de la suma es:%d, de la multiplicaci%cn es:%d y de la resta es:%d\n", suma, 162, producto, resta);
    system("pause");
}