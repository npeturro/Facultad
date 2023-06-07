/*Realizar un programa que calcule el promedio de las notas de los parciales de un curso.
Comenzar pidiendo al usuario la cantidad de alumnos del curso y la cantidad de
parciales que se tomaron durante el cuatrimestre. Calcular el promedio de notas de los
alumnos del curso. A medida que se ingresan las notas, validar que las mismas sean
mayores que 0 (cero) y menores que 10, en caso contrario requerir el ingreso de dicha
nota hasta que sea correcta. Mostrar el promedio de cada alumno a medida que se va
calculando y por último, el promedio general del curso.*/

#include <stdlib.h>
#include <stdio.h>

int main()
{
    float notas_alumnos, promedio_total = 0, acumulador_notas = 0;
    int cantidad_alumnos, cantidad_parciales, mientras = 1, i;

    printf("-BIENVENIDO-\n");
    printf("Ingrese la cantidad de alumnos de la clase\n");
    scanf("%d", &cantidad_alumnos);
    printf("Ingrese la cantidad de parciales que se tomaron en el cuatrimestre\n");
    scanf("%d", &cantidad_parciales);
    
    
    while (mientras <= cantidad_alumnos)
    {
        for (i = 1; i<=cantidad_parciales; i++)
        {
            printf("Ingrese la nota del alumno\n");
            scanf("%f", &notas_alumnos);
            if (notas_alumnos >= 0 && notas_alumnos <= 10){
                acumulador_notas += notas_alumnos;
                promedio_total += notas_alumnos;
            }
            else{
                printf("Valor incorrecto, intentelo nuevamente\n");
                i = (i - 1);
            }
        }
        acumulador_notas = (acumulador_notas / cantidad_parciales);
        i = 1;
        printf ("---------------------------------\n");
        printf("El promedio del alumno es de %0.2f\n", acumulador_notas);
        mientras += 1;
        acumulador_notas = 0;
    }
    promedio_total = (promedio_total / (cantidad_alumnos * cantidad_parciales));
    printf ("---------------------------------\n");
    printf("El promedio general del curso es de %0.2f\n", promedio_total);
    system("pause");
}