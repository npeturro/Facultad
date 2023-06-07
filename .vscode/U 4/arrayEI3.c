/*Deseamos realizar un programa que gestione las notas de una clase de 10 alumnos de los
cuales sabemos el DNI y la nota. El programa debe mostrar un menú con las siguientes
opciones a resolver:
1. Cargar Alumnos
2. Buscar un alumno
3. Modificar la nota de un alumno
4. Mostrar un listado de los 10 alumnos
5. Salir
Donde, la opción 1 permite cargar los 10 alumnos ingresando para cada uno: DNI y nota.
Validar que el DNI no sea menor que 1000000 ni mayor que 99999999. Validar que la nota sea
mayor a 0 y menor o igual que 10.
La opción 2 debe pedir el DNI de un alumno y mostrar en consola DNI y nota. Si el DNI
ingresado no existe, informar la situación con un mensaje “DNI inexistente”.
La opción 3 debe pedir el DNI del alumno al cual se desea cambiar la nota y la nueva nota. Si el
DNI ingresado no existe, informar la situación con un mensaje “DNI inexistente”, si el DNI si se
encuentra modificar la nota del alumno por la ingresada.
La opción 4 debe mostrar en la consola el listado de alumnos.
SÓLO se saldrá de la aplicación si se selecciona la opción 5.*/

#include <stdio.h>
#include <stdlib.h>

void main()
{
    int students[10][2] = {0};
    int condition = 1, option = 0, search = 0, modificate = 0;

    while (condition == 1)
    {
        printf("Ingrese una opcion\n");
        printf("1. Cargar alumnos\n");
        printf("2. Buscar alumnos\n");
        printf("3. Modificar la nota de un alumno\n");
        printf("4. Mostrar un listado de los 10 alumnos\n");
        printf("5. Salir\n");
        scanf("%d", &option);

        switch (option)
        {
            case 1:{
                for (int i = 0; i <= 9; i++)
                {
                    for (int j = 0; j < 1; j++){
                        do{
                            printf("Ingrese el DNI del alumno %d\n", i+1);
                            scanf("%d", &students[i][j]);
                            printf("Ingrese la nota del alumno numero %d, cuyo DNI es %d\n", i+1, students[i][0]);
                            scanf("%d", &students[i][1]);
                            if (students[i][j] < 1000000 || students[i][j] > 99999999 || students[i][1] > 10 || students[i][1] < 0){
                                printf("DNI o nota ingresados incorrectos, reintentelo\n");
                            }
                        } while (students[i][j] < 1000000 || students[i][j] > 99999999 || students[i][1] > 10 || students[i][1] < 0);
                    }
                }
                break;
            }
            case 2:{
                if (students[0][0] == 0){
                    printf("No hay alumnos cargados. Primero debe cargar los alumnos desde el menu\n");
                }
                else{
                    printf("Ingrese el DNI del alumno\n");
                    scanf("%d", &search);
                    for (int i = 0; i <= 9; i++){
                        if (students[i][0] == search){
                            printf("La nota del alumno es %d\n", students[i][1]);
                            search = 0;
                        }
                    }    
                    if (search != 0){
                    printf("DNI inexistente\n");
                    }
                } 
                break;
            }
            case 3:{
                printf("Ingrese el DNI del alumno\n");
                scanf("%d", &modificate);
                for (int i = 0; i <= 9; i++){
                    if (students[i][0] == modificate){
                        printf("Ingrese la nueva nota para el alumno %d\n", modificate);
                        scanf("%d", &students[i][1]);
                        modificate = 0;
                    }
                }
                if (modificate != 0){
                    printf("DNI inexistente\n");
                } 
                break;
            }
            case 4:{
                for (int i = 0; i <= 9; i++)
                {
                    printf("DNI alumno %d y nota %d\n", students[i][0], students[i][1]);
                    
                }
                break;
            }
            case 5:{
                exit(0);
                break;
            }
            default:{
                printf("Numero ingresado incorrecto\n");
            }
        }
    }
    system("pause");
}