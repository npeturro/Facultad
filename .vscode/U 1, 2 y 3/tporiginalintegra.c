/*Debemos desarrollar un programa de simulación
del funcionamiento de un cajero automático*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
    // base de datos del cajero de 10 (2 ahora) usuarios
    int numero_cuenta1 = 1111, contrasenia_usuario1 = 1234;
    char nombre_usuario1 [50] = "Usuario 1";
    int estado_usuario1 = 1;
    float saldo_usuario1 = 165000;

    int numero_cuenta2 = 2222, contrasenia_usuario2 = 1234;
    char nombre_usuario2[50] = "Sarasa";
    int estado_usuario2 = 1;
    float saldo_usuario2 = 1650000;

    // declaracion de variables de datos ingresado
    int numero_cuenta_ingresado, contrasenia_usuario_ingresado, i, opcion, monto_depositar, monto_extraccion, condicion, entidad_bancaria, condicion2;
    char nombre_usuario_ingresado[30];
    char estado_usuario_ingresado[10];
    float saldo = 0;

    i = 1;
    condicion = 1;
    condicion2 = 1;
    entidad_bancaria = 1;

    while (entidad_bancaria == 1)
    {
        do 
        {
            printf("-----BIENVENIDO-----\n");
            system("pause");

            printf("Ingrese su n%cmero de cuenta\n", 163);
            scanf("%d", &numero_cuenta_ingresado);
            printf("Ingrese su clave\n");
            scanf("%d", &contrasenia_usuario_ingresado);

            if (numero_cuenta_ingresado == numero_cuenta1 && contrasenia_usuario_ingresado == contrasenia_usuario1 && estado_usuario1 == 1) {
                condicion = 5;
            } 
            else {
                if (numero_cuenta_ingresado == numero_cuenta2 && contrasenia_usuario_ingresado == contrasenia_usuario2 && estado_usuario2 == 1) {
                    condicion = 5;
                }
            }
            if (numero_cuenta_ingresado == numero_cuenta1 && contrasenia_usuario_ingresado == contrasenia_usuario1 && estado_usuario1 == 0) {
                condicion = 1;
                condicion2 = 1;
                printf("Su cuenta se encuentra bloqueada\n");
            } 
            else {
                if (numero_cuenta_ingresado == numero_cuenta2 && contrasenia_usuario_ingresado == contrasenia_usuario2 && estado_usuario2 == 0) {
                condicion = 1;
                condicion2 = 1;
                printf("Su cuenta se encuentra bloqueada\n");
                }
            }  
            if (numero_cuenta_ingresado == numero_cuenta1 && contrasenia_usuario_ingresado != contrasenia_usuario1){
                if (condicion <= 2) {
                    condicion++;
                    condicion2 = 1;
                    printf("Numero de cuenta o contrasena incorrecta\n");
                }
                else { 
                    if (condicion == 3) {
                        printf("No se permiten mas intentos. Su cuenta ha sido bloqueada, comuniquese con la entidad bancaria para su restablecimiento\n");
                        estado_usuario1 = 0;
                        condicion = 1;
                        condicion2 = 1;
                    }
                }
            }
            else{ 
                if (numero_cuenta_ingresado == numero_cuenta2 && contrasenia_usuario_ingresado != contrasenia_usuario2){
                    if (condicion2 <= 2) {
                        condicion2++;
                        condicion = 1;
                        printf("Numero de cuenta o contrasena incorrecta\n");
                    }
                    else{
                        if (condicion2 == 3) {
                        printf("No se permiten mas intentos. Su cuenta ha sido bloqueada, comuniquese con la entidad bancaria para su restablecimiento\n");
                        estado_usuario2 = 0;
                        condicion2 = 1;
                        condicion = 1;
                        }
                    }
                }
            }
        } while (condicion <= 3 && condicion2 <= 3);
        condicion = 1;
        condicion2 = 1;

        if (numero_cuenta_ingresado == numero_cuenta1)
        {
            saldo = saldo_usuario1;
        }
        else if (numero_cuenta_ingresado == numero_cuenta2)
        {
            saldo = saldo_usuario2;
        }
        for (i = 1; i <= 10; i++)
        {
            printf("Bienvenido %s \n", nombre_usuario1);
            printf("Seleccione una opci%cn\n", 162);
            printf("1. Depositar\n");
            printf("2. Extraer\n");
            printf("3. Consultar saldo\n");
            printf("4. Mostrar cantidad de operaciones realizadas y saldo actual\n");
            printf("5. Salir\n");
            scanf("%d", &opcion);

            switch (opcion)
            {
            case 1:
                printf("Ingrese el monto a depositar\n");
                scanf("%d", &monto_depositar);
                saldo += monto_depositar;
                printf("Deposito realizado con exito\n");
                printf("----------------------------\n");
                break;
            case 2:
                printf("Ingrese el monto a extraer\n");
                scanf("%d", &monto_extraccion);
                if (monto_extraccion < saldo)
                {
                    saldo -= monto_extraccion;
                    printf("Extracci%cn realizada con exito\n", 162);
                    printf("----------------------------\n");
                }
                else
                {
                    printf("Extracci%cn invalida. No puede ser mayor al saldo en cuenta.\n", 162);
                    printf("Sera redirigido al menu\n");
                    printf("----------------------------\n");
                }
                break;
            case 3:
                printf("Su saldo en cuenta es de %0.2f\n", saldo);
                printf("----------------------------\n");
                break;
            case 4:
                i -= 1;
                printf("Su total de operaciones es de %d\n", i);
                printf("Su saldo es de %0.2f\n", saldo);
                printf("----------------------------\n");
                break;
            case 5:
                i = 11;
                break;
            }

            if (i == 10)
            {
                printf("Lleg%c al l%cmite de operaciones. Fin. Gracias!\n", 162, 161);
                printf("Si desea seguir efectuando una operaci%cn vuelva a ingresar sus datos\n", 162);
            }
        }
    }
    system("pause");
}

