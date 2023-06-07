/*Deseamos realizar un programa en lenguaje C que gestione las notas de una clase de 10 alumnos de los cuales sabemos el DNI y la nota. El programa debe mostrar un menú con las siguientes opciones a resolver:
1. Cargar Alumnos
2. Buscar un alumno
3. Modificar la nota de un alumno
4. Mostrar un listado de los 10 alumnos
5. Salir
Donde, la opción 1 permite cargar los 10 alumnos ingresando para cada uno: DNI y nota. Validar que el DNI no sea menor que 1000000 ni mayor que 99999999. Validar que la nota sea mayor a 0 y menor o igual que 10.
La opción 2 debe pedir el DNI de un alumno y mostrar en consola DNI y nota. Si el DNI ingresado no existe, informar la situación con un mensaje “DNI inexistente”.
La opción 3 debe pedir el DNI del alumno al cual se desea cambiar la nota y la nueva nota. Si el DNI ingresado no existe, informar la situación con un mensaje “DNI inexistente”, si el DNI si se encuentra modificar la nota del alumno por la ingresada.
La opción 4 debe mostrar en la consola el listado de alumnos.
SÓLO se saldrá de la aplicación si se selecciona la opción 5.*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//#define ALUMNOS[10];

struct alumno{
    char name[50];
    float note;
    int dni;
};

void main ()
{
    struct alumno alumnos[10];
    
    int condition = 0, option, search, flag = 0;
    alumnos[0].dni = 0;
    while(condition == 0){

        printf("Bienvenido, Seleccione una opci%cn\n", 162);
        printf("1. Cargar alumnos\n");
        printf("2. Buscar un alumno\n");
        printf("3. Modificar la nota de un alumno\n");
        printf("4. Mostrar un listado con los 10 alumnos\n");
        printf("5. Salir del sistema\n");
        scanf("%d", &option);

        switch (option)
        {
            case 1:
                for (int i = 0; i <= 9; i++){
                    printf("Ingrese el nombre del alumno %d\n", i+1);
                    scanf("%s", &alumnos[i].name);
                    printf("Ingrese la nota del alumno %d\n", i+1);
                    do
                    {
                        scanf("%f", &alumnos[i].note);
                        if (alumnos[i].note <= 0 || alumnos[i].note > 11){
                            printf("Nota inv%clida, ingresela nuevamente\n", 160);  
                        }
                    } while (alumnos[i].note <= 0 || alumnos[i].note > 11);
                    printf("Ingrese el dni del alumno %d\n", i+1);
                    do
                    {
                        scanf("%d", &alumnos[i].dni);
                        if (alumnos[i].dni < 1000000 || alumnos[i].dni > 99999999){
                            printf("DNI Inv%clido, ingreselo nuevamente\n", 160);  
                        }
                    } while (alumnos[i].dni < 1000000 || alumnos[i].dni > 99999999);
                }
                break;
            case 2:
                if (alumnos[0].dni == 0){
                    printf("Primero debe cargar los alumnos\n");
                    system("pause");
                }
                else{
                    printf("Buscar por:\n 1. Nombre\n 2. DNI\n");
                    scanf("%d", &option);
                    switch (option)
                    {
                        case 1:
                            break;
                        case 2:
                            printf("Ingrese el DNI\n");
                            do
                            {
                                scanf("%d", &search);
                                if (search < 1000000 || search > 99999999){
                                    printf("DNI Inv%clido, ingreselo nuevamente\n", 160);  
                                }
                            } while (search < 1000000 || search > 99999999); 
                            for (int i = 0; i <= 9; i++){
                                if (search == alumnos[i].dni){
                                    printf ("%s\n", alumnos[i].name);
                                    printf ("%f\n", alumnos[i].note);
                                    printf ("%d\n", alumnos[i].dni);
                                    flag = 1;
                                    system("pause");
                                }
                            }
                            if (flag == 0){
                                printf ("DNI no encontrado\n");
                                system("pause");
                            }
                        default:
                            break;
                    }
                }

                break;
            case 3:
                break; 
            case 4:
                break;
            case 5:
                condition = 1;
                break;
            default:
                break;
                
        }



    }
    system("pause");

}

