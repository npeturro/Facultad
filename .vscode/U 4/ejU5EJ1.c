/*1) Pedir al usuario que ingrese dos números. Luego presentar el siguiente
menú:
1. Informar su suma
2. Informar su resta
3. Informar su multiplicación
4. Informar su división
5. Salir
Seleccione una operación:
Mostrar el resultado de la operación seleccionada.*/

#include <stdio.h>
#include <stdlib.h>

float sumar(float num1, float num2)
{
    float respuesta;
    respuesta = num1 + num2;
    return respuesta;
}

float resta(float num1, float num2)
{
    float respuesta;
    respuesta = num1 - num2;
    return respuesta;
}

float multiplicacion(float num1, float num2)
{
    float respuesta;
    respuesta = num1 * num2;
    return respuesta;
}

float division(float num1, float num2) //Esto es una funcion por valor(No modifica al valor del main). Por referencia void division(float* num1, float* num2), esto cambia el valor en el main 
{
    float respuesta;
    respuesta = num1 / num2;
    return respuesta;
}

void main()
{
    int opcion;
    float resultado = 0;
    float num1 = 0;
    float num2 = 0;
    
    do
    {
        printf ("Bienvenido, ingrese dos valores\n");
        printf ("Valor 1: ");
        scanf ("%f", &num1);
        printf ("Valor 2: ");
        scanf ("%f", &num2);
        printf("-----------------------------------\n");

        do
        {
            printf("1. Informar su suma\n");
            printf("2. Informar su resta\n");
            printf("3. Informar su multiplicacion\n");
            printf("4. Informar su division\n");
            printf("5. Salir\n");
            printf("Seleccione una operacion\n");
            scanf("%d", &opcion);

            switch (opcion)
            {
            case 1:

                resultado = sumar(num1, num2);
                printf ("La suma de los n%cmeros es: %0.2f\n", 163, resultado);

                break;
            case 2:
                
                resultado = resta(num1, num2);
                printf ("La resta de los n%cmeros es: %0.2f\n", 163, resultado);

                break;
            case 3:

                resultado = multiplicacion(num1, num2);
                printf ("La multiplicaci%cn de los n%cmeros es: %0.2f\n",162, 163, resultado);
                
                break;
            case 4:

                resultado = division(num1, num2);
                printf ("La divis%cn de los n%cmeros es: %0.2f\n",162, 163, resultado);
                
                break;
            default:

                printf ("Opci%cn inv%clida\n", 162, 160);
                break;
            }

        } while (opcion != 5);
        printf ("Desea ingresar otros valores?\n");
        printf ("1. Si\n");
        printf ("2. No\n");
        scanf("%d", &opcion);
        if (opcion == 2){printf("Saliendo del sistema\n");}
       
    }while (opcion != 2);

    system("pause");

}