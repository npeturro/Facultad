/*Pedir al usuario que ingrese dos números (permitir ingresar número con decimales).
Luego presentar el siguiente menú:
1. Informar su suma
2. Informar su resta
3. Informar su multiplicación
4. Informar su división
5. Salir
Seleccione una operación:
Mostrar el resultado de la operación seleccionada. Si el usuario ingresa la opción 5 el
programa debe terminar.*/

#include <stdio.h>
#include <stdlib.h>

int main (){
    float number1;
    float number2;
    float result;
    int option;
    printf("Ingrese el primer n%cmero\n", 163);
    scanf("%f", &number1);
    printf ("Ingrese el segundo n%cmero\n", 163);
    scanf("%f", &number2);
    printf("Seleccione la opci%cn que desea realizar\n", 162);
    printf ("1. Informar su suma\n");
    printf ("2. Informar su resta\n");
    printf ("3. Informar su multiplicaci%cn\n", 162);
    printf ("4. Informar su divisi%cn\n", 162);
    printf ("5. Salir\n");
    scanf ("%d", &option);
    switch (option){
        case 1:
            result = number1 + number2;
            printf("El resultado de la suma es %0.2f\n", result);
            break;
        case 2:
            result = number1 - number2;
            printf("El resultado de la resta es %0.2f\n", result);
            break;
        case 3:
            result = number1 * number2;
            printf("El resultado de la multiplicaci%cn es %0.2f\n", 162, result);
            break;
        case 4:
            result = number1 / number2;
            printf("El resultado de la divisi%cn es %0.2f\n", 162, result);
            break;
        case 5:
            printf("Gracias por su tiempo\n");
            break;
        default:
            printf("La opci%cn ingresada es incorrecta\n", 162);
    }
    system ("pause");
}