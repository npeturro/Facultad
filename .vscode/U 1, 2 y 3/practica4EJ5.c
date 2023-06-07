/*Se tiene el dni de un alumno y una nota correspondiente a su parcial. Requerir al
usuario ingresar el dni del alumno. Evaluar si el dni ingresado es igual al que se tiene
almacenado. Permitir ingresar un dni incorrecto hasta 3 veces como máximo. Si el
usuario ingresa el dni de manera correcta, mostrar en la consola la nota del alumno.
Trabajar con las siguientes variables:
 int dni = 38632584;
 float nota = 7;
 int dniIngresado = 0;
 int intentos = 1;
 int ingresaCorrectamente = 0;*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int dni = 38632584;
    float nota = 7;
    int dniIngresado = 0;
    int intentos = 1;
    int ingresaCorrectamente = 0;

    for (intentos = 1; intentos <= 3; intentos ++)
    {
        printf ("Ingrese el DNI del alumno\n");
        scanf("%d", &dniIngresado);
        if (dniIngresado == dni){
            printf("La nota del alumno es %0.2f\n", nota);
            intentos = 4;
        }
        else{
            printf("El DNI es invalido, reintentelo\n");
            if (intentos == 3){
                printf("Se llego al limite de ingresos, pruebe en 5 minutos\n");
            }
        }
    } 
    system ("pause");

}


