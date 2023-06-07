/*- Leer una nota de un alumno por consola e informar la condición del mismo. (menor
que 4: Reprobado, menor que 6: Regular, mayor o igual que 6: Promocionado). Validar
que la nota ingresada se encuentre entre el 0 y el 10, de lo contrario informar “Nota
inválida”.
*/

#include <stdio.h> 
#include <stdlib.h>

int main (){
    int nota; 
    printf("Ingrese la nota del alumno\n");
    scanf("%d",&nota);
    if (nota > 10 || nota < 0){
        printf ("Nota invalida\n");
    }
    else{
        if (nota >= 6){
            printf ("El alumno se encuentra promocionado\n");
        }
        else{
            if (nota >= 4){
                printf ("El alumno se encuentra regular\n");
            }
            else{
                printf ("El alumno se encuentra desaprobado\n");
            }
        }
    }
    system("pause");
}