#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[])
{
    int i;
    char alumnos [20] = ""; //esto significa que la esta inicializando con todos los espacios vacios
    float notas;
    for (i=1;i<=5;i++){
        printf("Ingrese el nombre del alumno/a: ");
        scanf("%s", &alumnos);
        printf("Ingrese la nota del alumno/a: ");
        scanf("%f", &notas);
        if (notas < 4)
        {
            printf("El alumno/a %s, est%c aplazado/a. \n\n", alumnos, 160);
            /*si solo quiero mostrar un valor de la cadena uso: */
            printf("%c\n\n", alumnos[2]);
        }
    }
    system("pause");
    return 0;
}
//%s --> va a mostrar la cadena de texto en el printf
//%c --> va a mostrar solo un caracter posicionado en la posicion especifica
