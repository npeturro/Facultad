/*Pedir al usuario que ingrese 10 números reales, validar que los mismos sean valores
positivos, si el usuario ingresa un número negativo o nulo, pedir reingresar el número
(repetir el ingreso de dicho número mientras el número no sea correcto). Informar al
usuario la suma de los 10 números ingresados.*/

#include <stdlib.h>
#include <stdio.h>

int main()
{
    int num, acumulador = 0, mientras = 1;

    while (mientras <= 10)
    {
        printf("Ingrese un n%cmero\n", 163);
        scanf("%d", &num);
        if (num > 0){
            mientras += 1;
            acumulador += num;
        }
        else
        {
            printf("N%cmero incorrecto, intentelo nuevamente\n", 163);
        }
    }
    printf("Alcanzo el limite de ingresos, la suma del total de n%cmeros ingresados es de %d\n", 163, acumulador);
    system("pause");


}
