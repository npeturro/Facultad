#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

void main()
{
    float alumnos_aprobados = 0, alumnos_regulares = 0, alumnos_libres = 0;
    float alumnos_aprobados2 = 0, alumnos_regulares2 = 0, alumnos_libres2 = 0;
    float array_curso1[10];
    float array_curso2[10];
    int condicion = 1, opcion;

    array_curso1[0] = 0;
    array_curso2[0] = 0;

    while (condicion == 1)
    {
        printf("Ingrese una opci%cn\n", 162);
        printf("1 - Ingresar notas para el curso 1\n");
        printf("2 - Ingresar notas para el curso 2\n");
        printf("3 - Ver Aprobados, Regulares y Libres\n"); 
        printf("4 - Salir\n");      
        scanf("%d", &opcion);
        switch (opcion)
        {
            case 1:{
                for (int i = 0; i<10; i++){
                    printf("Ingrese la nota n%cmero %d\n", 163, i+1);
                    scanf("%f", &array_curso1[i]);
                    if (array_curso1[i] < 0 || array_curso1[i] > 10){
                        printf("Nota inv%clida, re%cntentelo\n", 160, 161);
                        i -= 1;
                    }
                }
                break;
            }
            case 2:{
                for (int i = 0; i<10; i++){
                    printf("Ingrese la nota n%cmero %d\n", 163, i+1);
                    scanf("%f", &array_curso2[i]);
                    if (array_curso2[i] < 0 || array_curso2[i] > 10){
                        printf("Nota inv%clida, re%cntentelo\n", 160, 161);
                        i -= 1;
                    }
                }
                break;
            }
            case 3:{
                printf("1 - Ver notas curso 1\n");
                printf("2 - Ver notas curso 2\n");
                scanf("%d", &opcion);
                switch (opcion)
                {
                    case 1:
                    {
                        if (array_curso1[0] == 0)
                        {
                            printf("Primero debe ingresar notas al curso\n");
                        }
                        else
                        {
                            alumnos_aprobados = 0;
                            alumnos_regulares = 0;
                            alumnos_libres = 0;
                            for (int i = 0; i < 10; i++)
                            {
                                if (array_curso1[i] >= 6)
                                {
                                    alumnos_aprobados += 1;
                                }
                                else if (array_curso1[i] >= 4 && array_curso1[i] < 6)
                                {
                                    alumnos_regulares += 1;
                                }
                                else
                                {
                                    alumnos_libres += 1;
                                }
                            }
                            printf("Los alumnos aprobados son: %0.0f\n", alumnos_aprobados);
                            printf("Los alumnos regulares son: %0.0f\n", alumnos_regulares);
                            printf("Los alumnos libres son: %0.0f\n", alumnos_libres);
                        }
                        break;
                    }
                    case 2:
                    {
                        if (array_curso2[0] == 0)
                        {
                            printf("Primero debe ingresar notas al curso\n");
                        }
                        else
                        {
                            alumnos_aprobados2 = 0;
                            alumnos_regulares2 = 0;
                            alumnos_libres2 = 0;
                            for (int i = 0; i < 10; i++)
                            {
                                if (array_curso2[i] >= 6)
                                {
                                    alumnos_aprobados2 += 1;
                                }
                                else if (array_curso2[i] >= 4 && array_curso2[i] < 6)
                                {
                                    alumnos_regulares2 += 1;
                                }
                                else
                                {
                                    alumnos_libres2 += 1;
                                }
                            }
                            printf("Los alumnos aprobados son: %0.0f\n", alumnos_aprobados2);
                            printf("Los alumnos regulares son: %0.0f\n", alumnos_regulares2);
                            printf("Los alumnos libres son: %0.0f\n", alumnos_libres2);
                        }
                        break;
                    }
                }
                break; 
            }
            case 4:{
                printf("Gracias!\n");
                condicion == 0;
                break;
            }
        }
    }
    system("pause");
}