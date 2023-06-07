/*Escriba un programa que lea una matriz cuadrada la presente en pantalla, y presente
la suma de todos los números que no están en la diagonal principal.*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int sumador = 0, matriz_numero;
    
    printf("Ingrese el tama%co de su matriz cuadrada\n", 164);
    scanf("%d", &matriz_numero);
    
    int matriz[matriz_numero][matriz_numero];

    for (int i = 0; i < matriz_numero; i++){
        for (int j = 0; j < matriz_numero; j++){
            printf ("Ingrese un numero\n");
            scanf ("%d", &matriz[i][j]);
            if (i != j){
               sumador += matriz[i][j]; 
           }
        }
    }



    printf ("El total de los numeros es %d\n", sumador);

    system("pause");


}