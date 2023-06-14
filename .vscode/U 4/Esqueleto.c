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

typedef struct {
    int dni;
    int nota;
} Alumno;

//int buscarAlumno(Alumno alumnos[], int dni)      Grupo 3,4 
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

//void cargarAlumnos(Alumno alumnos[])             Grupo 1,2
void cargarAlumnos(Alumno alumnos[]){
    int dni, pos;
    int nota_ingresada;

    for (int i = 0; i < MAX_ALUMNOS; i++)
    {
        printf("Ingrese un DNI:\n");
        do
        {
            scanf("%d", &dni);
            pos = buscarAlumno(alumnos,dni);
            if (pos != -1) { //Esto es distinto de -1 porque devuelve -1 cuando el dni no esta cargado y otro valor si el DNI esta existente 
                printf("Este DNI ya fue ingresado, ingrese un DNI distinto\n");
            }
            if (dni > 99999999 || dni < 1000000){
                printf ("DNI Inv%clido, ingreselo nuevamente\n", 160);
            }

        } while (dni > 99999999 || dni < 1000000 || pos != -1);
        alumnos[i].dni = dni;

        do
        {
            printf("Ingrese la nota del alumno:\n");
            scanf("%d", &nota_ingresada);
        } while (nota_ingresada < 0 || nota_ingresada > 10);
        alumnos[i].nota = nota_ingresada;
    } 
}

//void modificarNota(Alumno alumnos[])             Grupo 5,6
void modificarNota(Alumno alumnos[])
{
    int dni,nota,pos;
        printf("Ingrese DNI del alumno:\n");
    do
    { 
        scanf("%d", &dni);
        if(dni < 1000000 || dni > 99999999) //estaban mal las validaciones dni<9999999||dni>999999
        {
            printf("Ingrese un dni valido:\n");
        }
        pos=buscarAlumno(alumnos,dni);
    } while (dni < 1000000 || dni > 99999999 || pos == -1);
    
    

    printf("Ingrese la nueva nota. La actual nota es: %d\n", alumnos[pos].nota);
    do
    {
        scanf("%d",&nota);
        if( nota > 11 || nota < 0) //(nota<11||nota>0)
        {
            printf("Ingrese una nota valido:\n");
        }
    } while (nota > 11 || nota < 0);
    alumnos[pos].nota=nota;
}

//void mostrarListado(Alumno alumnos[])            Grupo 7,8
void mostrarListado(Alumno alumnos[])
{

    printf("El listado de alumnos actual es el siguiente:\n");
    for (int i = 0; i < MAX_ALUMNOS; i++)
    {
        printf("DNI: %d, nota: %d\n", alumnos[i].dni, alumnos[i].nota); //estaban en %s los dos
    }

}


int main() {
    Alumno alumnos[MAX_ALUMNOS];
    int opcion, dni, indice;
    do {
        printf("\nMenu:\n");
        printf("1. Cargar Alumnos\n");
        printf("2. Buscar un alumno\n");
        printf("3. Modificar la nota de un alumno\n");
        printf("4. Mostrar un listado de los 10 alumnos\n");
        printf("5. Salir\n");
        printf("Ingrese una opci%cn: ", 162);
        scanf("%d", &opcion);
        switch (opcion) {
            case 1:
                cargarAlumnos(alumnos);
                break;
            case 2:
                printf("Ingrese el DNI del alumno a buscar: ");
                scanf("%d", &dni);
                indice = buscarAlumno(alumnos, dni);
                if (indice == -1) {
                    printf("DNI inexistente\n");
                } else {
                    printf("DNI: %d - Nota: %d\n", alumnos[indice].dni, alumnos[indice].nota);
                }
                break;
            case 3:
                modificarNota(alumnos);
                break;
            case 4:
                mostrarListado(alumnos);
                break;
            case 5:
                printf("Saliendo..");
                break;
            default:
                printf("Opci%cn invalida\n", 162);
                break;
        }
    } while (opcion != 5);

    return 0;
}