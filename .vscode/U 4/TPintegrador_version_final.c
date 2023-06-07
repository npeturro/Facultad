/*
TP INTEGRADOR Nº1

Integrantes:
-Gioda, Matias
-Lioy, Alejandro
-Peturro, Nicolas
-Volpe, Matias*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    // base de datos del cajero de 2 usuarios
    int numero_cuenta1 = 1111, contrasenia_usuario1 = 1234;
    char nombre_usuario1[50] = "Usuario 1";
    int estado_usuario1 = 1;
    float saldo_usuario1 = 254000;

    int numero_cuenta2 = 2222, contrasenia_usuario2 = 1234;
    char nombre_usuario2[50] = "Usuario 2";
    int estado_usuario2 = 1;
    float saldo_usuario2 = 165700;

    // declaracion de variables de datos ingresados
    int numero_cuenta_ingresado, contrasenia_usuario_ingresado, i, opcion,  condicion, intentos;
    char nombre_usuario[50];
    float saldo = 0, monto_depositar, monto_extraccion;

    i = 1;
    condicion = 1;
    intentos = 0;
    printf("-----BIENVENIDO-----\n");
    system("pause");

    while (condicion == 1)
    {
        contrasenia_usuario_ingresado = 0;
        intentos = 0;
        do
        {
            printf("Ingrese su n%cmero de cuenta\n", 163);
            scanf("%d", &numero_cuenta_ingresado);
            if (numero_cuenta_ingresado != numero_cuenta1 && numero_cuenta_ingresado != numero_cuenta2)
            {
                printf("N%cmero de cuenta incorrecto\n", 163);
            }

        } while (numero_cuenta_ingresado != numero_cuenta1 && numero_cuenta_ingresado != numero_cuenta2);


        if (numero_cuenta_ingresado == numero_cuenta1)
        {
            if (estado_usuario1 == 0)
            {
                printf("Su cuenta se encuentra bloqueada, comun%cquese con la entidad bancaria para su restablecimiento\n", 161);
            }
            else
            {
                while (contrasenia_usuario_ingresado != contrasenia_usuario1 && intentos < 3)
                {
                    printf("Ingrese la contrase%ca\n",164);
                    scanf("%d", &contrasenia_usuario_ingresado);
                    if (contrasenia_usuario_ingresado != contrasenia_usuario1)
                    {
                        printf("La contrase%ca es incorrecta\n",164);
                        intentos++;
                    }
                }
                if (intentos == 3)
                {
                    estado_usuario1 = 0;
                    printf("No se permiten m%cs intentos. Su cuenta ha sido bloqueada, comun%cquese con la entidad bancaria para su reestablecimiento\n", 160, 161);
                }
                else
                {
                    saldo = saldo_usuario1;
                    strcpy(nombre_usuario, nombre_usuario1);
                }
            }
        }

        else if (numero_cuenta_ingresado == numero_cuenta2)
        {
            if (estado_usuario2 == 0)
            {
                printf("Su cuenta se encuentra bloqueada, comun%cquese con la entidad bancaria para su restablecimiento\n", 161);
            }
            else
            {
                while (contrasenia_usuario_ingresado != contrasenia_usuario2 && intentos < 3)
                {
                    printf("Ingrese la contrase%ca\n",164);
                    scanf("%d", &contrasenia_usuario_ingresado);
                    if (contrasenia_usuario_ingresado != contrasenia_usuario2)
                    {
                        printf("La contrase%ca es incorrecta\n",164);
                        intentos++;
                    }
                }
                if (intentos == 3)
                {
                    estado_usuario2 = 0;
                    printf("No se permiten m%cs intentos. Su cuenta ha sido bloqueada, comun%cquese con la entidad bancaria para su reestablecimiento\n", 160, 161);
                }
                else
                {
                    saldo = saldo_usuario2;
                    strcpy(nombre_usuario, nombre_usuario2);
                }
            }
        }
    
        if ((numero_cuenta_ingresado == numero_cuenta1 && contrasenia_usuario_ingresado == contrasenia_usuario1 && estado_usuario1 == 1) || (numero_cuenta_ingresado == numero_cuenta2 && contrasenia_usuario_ingresado == contrasenia_usuario2 && estado_usuario2 == 1))
        {
            for (i = 1; i <= 10; i++)
            {
                printf("Bienvenido %s\n",nombre_usuario);
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
                    scanf("%f", &monto_depositar);
                    saldo += monto_depositar;
                    printf("Deposito realizado con %cxito\n", 130);
                    printf("----------------------------\n");
                    break;
                case 2:
                    printf("Ingrese el monto a extraer\n");
                    scanf("%f", &monto_extraccion);
                    if (monto_extraccion < saldo)
                    {
                        saldo -= monto_extraccion;
                        printf("Extracci%cn realizada con %cxito\n", 162, 130);
                        printf("----------------------------\n");
                    }
                    else
                    {
                        printf("Extracci%cn inv%clida. No puede ser mayor al saldo en cuenta.\n", 162, 160);
                        printf("Ser%c redirigido al men%c\n", 160, 163);
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
                default:
                    i -= 1;
                    printf("N%cmero ingresado incorrecto\n", 163);
                    printf("----------------------------\n");
                    break;
                }

                if (i == 10)
                {
                    printf("Lleg%c al l%cmite de operaciones. Fin. Gracias!\n", 162, 161);
                    printf("Si desea seguir efectuando una operaci%cn vuelva a ingresar sus datos\n", 162);
                }
            }
        }
    }
    system("pause");
}