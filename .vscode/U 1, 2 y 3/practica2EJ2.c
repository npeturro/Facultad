/*- Ingresar por teclado dos números, determinar cuál es el mayor y visualizarlo en
pantalla. Informar también si los números son iguales.*/

#include <stdio.h>  

int main(){
    int num1;
    int num2;
    printf("ingrese el primer valor\n");
    scanf("%d" ,&num1);
    printf("ingrese el segundo valor\n");
    scanf("%d" ,&num2);
    if (num1 == num2){
        printf("ambos numeros son iguales");
    }
    else if (num1 > num2){
        printf("%d es mayor que %d", num1, num2);
    }
    else{
        printf("%d es mayor que %d", num2, num1);
    }
    return 0;
}