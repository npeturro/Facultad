
#include <stdio.h>
#include <stdlib.h>

int main(){

    float saldo_usuario1 = 165000;
    
    int numero_cuenta1 = 1111, contrasenia_usuario1 = 1234;
    int i, opcion, monto_depositar, monto_extraccion, numero_cuenta_ingresado;

    for ( i = 1; i < 10; i++ )
    {
        printf("Bienvenido\n");
        printf("Seleccione una opci%cn\n", 162);+
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
                saldo_usuario1 += monto_depositar;
                printf("Deposito realizado con exito\n");
                break;
            case 2: 
                printf("Ingrese el monto a extraer\n");
                scanf("%d", &monto_extraccion);
                    if (monto_extraccion < saldo_usuario1){
                        saldo_usuario1 -= monto_extraccion;
                        printf("Extracci%cn realizada con exito\n", 162);
                    }
                    else{
                        printf("Extracci%cn invalida. No puede ser mayor al saldo en cuenta.\n", 162);
                        printf("Sera redirigido al menu\n");
                    }
                    break;
            case 3:
                printf("Su saldo en cuenta es de %0.2f\n", saldo_usuario1);
                break;
            case 4:
                printf("Su total de operaciones es de %d\n", i);
                printf("Su saldo es de %0.2f\n", saldo_usuario1);
                break;
            case 5:
                numero_cuenta_ingresado = 0000;
                break;
        }
    }             


    system("pause");

}