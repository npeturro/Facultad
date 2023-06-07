/*. Ingresar 2 nombres e indicar cuál de los dos precede alfabéticamente al otro o si son iguales.*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    int i;
    char cadena1[50] = ("");
    char cadena2[50] = ("");

    printf("Ingrese un nombre\n");
    scanf("%s", &cadena1);
    printf("Ingrese otro nombre\n");
    scanf("%s", &cadena2);

    strcmp(cadena1, cadena2);

    if (strcmp == 0){
        printf("Ambos nombres son iguales\n");
    }
    else{
        if (strcmp > 0){
            printf("El segundo nombre es quien precede\n");
        }
        else{
            printf("El primer nombre es quien precede\n");  
        }  
    }


    system("pause");


}