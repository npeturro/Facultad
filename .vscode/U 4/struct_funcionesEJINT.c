/*Deseamos realizar un programa en lenguaje C que gestione las notas de una clase de 3 alumnos de los cuales sabemos el DNI y la nota.
El programa debe mostrar un menú con las siguientes opciones a resolver:

1. Cargar Alumnos con sus respectivas notas
2. Buscar un alumno
3. Modificar la nota de un alumno
4. Mostrar un listado de los 10 alumnos
5. Salir

Donde, la opción 1 permite cargar los 3 alumnos ingresando para cada uno: DNI y nota.
Validar que el DNI no sea menor que 1.000.000 ni mayor que 99.999.999.
Validar que la nota sea mayor a 0 y menor o igual que 10.
La opción 2 debe pedir el DNI de un alumno y mostrar en consola DNI y nota. Si el DNI ingresado no existe, informar la situación con un mensaje “DNI inexistente”.
La opción 3 debe pedir el DNI del alumno al cual se desea cambiar la nota y la nueva nota. Si el DNI ingresado no existe, informar la situación con un mensaje “DNI inexistente”, si el DNI si se encuentra modificar la nota del alumno por la ingresada.
La opción 4 debe mostrar en la consola el listado de alumnos.
SÓLO se saldrá de la aplicación si se selecciona la opción 5.
*/

#include <stdio.h>

#define MAX_ALUMNOS 3

// Otra forma de definir la estructura
typedef struct
{
    int dni;
    int nota;
} Alumno;

// void cargarAlumnos(Alumno alumnos[])             Grupo 1,2
// int buscarAlumno(Alumno alumnos[], int dni)      Grupo 3,4
// void modificarNota(Alumno alumnos[])             Grupo 5,6
// void mostrarListado(Alumno alumnos[])            Grupo 7,8

void cargarAlumnos(Alumno alumnos[])
{
    for (int i = 0; i < MAX_ALUMNOS; i++)
    {
        printf("Ingrese la nota del alumno %d\n", i + 1);
        do
        {
            scanf("%f", &alumnos[i].nota);
            if (alumnos[i].nota <= 0 || alumnos[i].nota > 11)
            {
                printf("Nota inv%clida, ingresela nuevamente\n", 160);
            }
        } while (alumnos[i].nota <= 0 || alumnos[i].nota > 11);
        printf("Ingrese el dni del alumno %d\n", i + 1);
        do
        {
            scanf("%d", &alumnos[i].dni);
            if (alumnos[i].dni < 1000000 || alumnos[i].dni > 99999999)
            {
                printf("DNI Inv%clido, ingreselo nuevamente\n", 160);
            }
        } while (alumnos[i].dni < 1000000 || alumnos[i].dni > 99999999);
    }
}

int buscarAlumno(Alumno alumnos[], int dni)
{

    int i;
    for (i = 0; i < MAX_ALUMNOS; i++)
    {
        if (dni == alumnos[i].dni)
        {
            return i;
        }
    }
    if (i == MAX_ALUMNOS)
    {
        i = -1;
        return i;
    }
}

int main()
{
    Alumno alumnos[MAX_ALUMNOS];
    int opcion, dni, indice;

    do
    {
        printf("\nMenu:\n");
        printf("1. Cargar Alumnos\n");
        printf("2. Buscar un alumno\n");
        printf("3. Modificar la nota de un alumno\n");
        printf("4. Mostrar un listado de los 10 alumnos\n");
        printf("5. Salir\n");
        printf("Ingrese una opcion: ");
        scanf("%d", &opcion);
        switch (opcion)
        {
        case 1:
            cargarAlumnos(alumnos);

            break;
        case 2:
            printf("Ingrese el DNI del alumno a buscar: ");
            scanf("%d", &dni);
            indice = buscarAlumno(alumnos, dni);
            if (indice == -1)
            {
                printf("DNI inexistente\n");
            }
            else
            {
                printf("DNI: %d - Nota: %d\n", alumnos[indice].dni, alumnos[indice].nota);
            }
            break;
        case 3:
            // modificarNota(alumnos);
            break;
        case 4:
            // mostrarListado(alumnos);
            break;
        case 5:
            break;
        default:
            printf("Opcion invalida\n");
            break;
        }
    } while (opcion != 5);

    return 0;
}
