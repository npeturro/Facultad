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
    if (month == 1){
        printf("El mes correspondiente es Enero\n");
    }
    else{
        if (month == 2){
            printf("El mes correspondiente es Febrero\n");
        }
        else{
            if (month == 3){
                printf("El mes correspondiente es Marzo\n");
            }
            else{
                if (month == 4){
                    printf("El mes correspondiente es Abril\n");
                }
                else{
                    if (month == 5){
                        printf("El mes correspondiente es Mayo\n");
                    }
                    else{
                        if (month == 6){
                            printf("El mes correspondiente es Junio\n");
                        }
                        else{
                            if (month == 7){
                                printf("El mes correspondiente es Julio\n");
                            }
                            else{
                                if (month == 8){
                                    printf("El mes correspondiente es Agosto\n");
                                }
                                else{
                                    if (month == 9){
                                        printf("El mes correspondiente es Septiembre\n");
                                    }
                                    else{
                                        if (month == 10){
                                            printf("El mes correspondiente es Octubre\n");
                                        }
                                        else{
                                            if (month == 11){
                                                printf("El mes correspondiente es Noviembre\n");
                                            }
                                            else{
                                                if (month ==12){
                                                    printf("El mes correspondiente es Diciembre\n");
                                                }
                                                else{
                                                    printf("El numero ingresado no es correcto, debe ser del 1 al 12\n");
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    system ("pause");
}

