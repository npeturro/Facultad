/*- Pedir al usuario que ingrese un número del 1 al 12 e indicar a qué mes corresponde
dicho número (por ejemplo: si ingresa el número 2 se deberá mostrar febrero en la
consola, si ingresa el 8, agosto, etc.) (realizar el ejercicio primero utilizando estructura
if y luego estructura switch).*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int month;
    printf("Indique el numero de mes que desea averiguar\n");
    scanf("%d", &month);
    switch (month){
        case 1:
            printf("El mes correspondiente es Enero\n");
            break;
        case 2:
            printf("El mes correspondiente es Febrero\n");
            break;
        case 3:
            printf("El mes correspondiente es Marzo\n");
            break;
        case 4:
            printf("El mes correspondiente es Abril\n");
            break;
        case 5:
            printf("El mes correspondiente es Mayo\n");
            break;
        case 6:
            printf("El mes correspondiente es Junio\n");
            break;
        case 7:
            printf("El mes correspondiente es Julio\n");
            break;
        case 8:
            printf("El mes correspondiente es Agosto\n");
            break;
        case 9:
            printf("El mes correspondiente es Septiembre\n");
            break;
        case 10:
            printf("El mes correspondiente es Octubre\n");
            break;
        case 11:
            printf("El mes correspondiente es Noviembre\n");
            break;
        case 12:
            printf("El mes correspondiente es Diciembre\n");
            break;
        default:
            printf("El numero ingresado no es correcto\n");
    }
    system("pause");
}