#include <stdio.h>
#include <stdlib.h>
#include <string.h>


/*struct Book // siempre se declara fuera del main
{
    char title[50];
    char author[50];
    char subject[100];
    int book_id;
};*/

/*int buscarCaracter(char arreglo[], char objetivo) {

   int longitud = strlen(arreglo);

   for (int i = 0; i < longitud; i++) {

      if (strcmp(arreglo[i], objetivo) == 0) {
        printf("sarasaencontrado");      
      }

   }

   return -1;

}*/


void main()
{
    char arreglo[1] = {"0"};  
    
    char objetivo[50];
    int lugar = 1;
    printf("Ingresar");
    scanf("%s", &objetivo);
    //lugar = buscarCaracter(arreglo, objetivo);
    if (lugar > 0){
        printf("el caracter es la posicion %d", lugar);
    }
    else{
        printf ("No se encontro");
    }
    system("pause");

}