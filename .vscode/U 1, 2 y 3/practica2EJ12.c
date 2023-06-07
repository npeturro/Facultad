/* Realizar un programa que permita registrar los datos para una venta de $4600. Para
ello, se le pedirá al usuario que ingrese su DNI, validar que dicho número no sea menor
que 1000000 ni mayor que 99999999. Luego, requerir al usuario que seleccione el
medio de pago: 1-Efectivo, 2-Tarjeta de crédito, si selecciona tarjeta, pedir que ingrese
una opción de las siguientes: 1-Visa, 2-American Express, 3-Mercado Pago, 4-Cabal.
Además, requerir la cantidad de cuotas en las que abonará (1, 3, 6 o 12). El interés por
pagar en cuotas será de: 0 interés para efectivo o 1 cuota, 4% para 3 cuotas y 8% para
6 y 12 cuotas. Validar que todos los datos ingresados por el usuario sean correctos, en
caso contrario informar la situación y finalizar programa. Por último, presentar un
resumen de la operación, por ejemplo:
DNI: 38.456.123
Medio de pago: Tarjeta de crédito
Tarjeta: Cabal
Cuotas: 3
Total: $4784*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int venta;
    int dni_usuario;
    int metodo_pago;
    int cuotas_pago;
    venta = 4600;
    printf("Bienvenidos al sistema de gesti%cn de ventas\n", 162);
    printf("Para finalizar la venta por $%d ingrese los siguientes datos del comprador:\n", venta);
    printf("DNI (Sin puntos ni guiones)\n");
    scanf("%d", &dni_usuario);
    if (dni_usuario > 1000000 && dni_usuario < 99999999 ){
        printf("Seleccione la opci%cn de pago\n", 162);
        printf("1. Efectivo\n");
        printf("2. Tarjeta de Cr%cdito\n", 130);
        scanf("%d", &metodo_pago);
        switch (metodo_pago){
            case 1:
                printf ("-RESUMEN DE OPERACI%cN-\n", 224);
                printf ("DNI %d\n", dni_usuario);
                printf ("Total de la operaci%cn: %d\n", 162, venta);
                break;
            case 2:
                printf ("Seleccione la tarjeta que desea utilizar\n");
                printf ("1. Visa\n");
                printf ("2. American Express\n");
                printf ("3. Mercado Pago\n");
                printf ("4. Cabal\n");
                scanf("%d", &metodo_pago);
                if (metodo_pago <= 4 && metodo_pago >= 1){
                    printf ("Seleccione la opci%cn de cuotas que desea\n", 162);
                    printf ("1. 1 cuota\n");
                    printf ("2. 3 cuotas\n");
                    printf ("3. 6 cuotas\n");
                    printf ("4. 12 cuotas\n");
                    scanf ("%d", &cuotas_pago);
                    switch (cuotas_pago){
                        case 1:
                            printf ("-RESUMEN DE OPERACI%cN-\n", 224);
                            printf ("DNI %d\n", dni_usuario);
                            printf ("Medio de pago: Tarjeta de cr%cdito\n", 130);
                            switch (metodo_pago){
                                case 1:
                                    printf ("Tarjeta: Visa\n");
                                    break;
                                case 2:
                                    printf ("Tarjeta: American Express\n");
                                    break;
                                case 3:
                                    printf ("Tarjeta: Mercado Pago\n");
                                    break;
                                case 4:
                                    printf ("Tarjeta: Cabal\n");
                                    break;
                                }
                            printf ("Cuota: 1\n");
                            printf ("Total de la operaci%cn: %d\n", 162, venta);
                            break;
                        case 2:
                            venta = venta + ((venta * 4) / 100);
                            printf ("-RESUMEN DE OPERACI%cN-\n", 224);
                            printf ("DNI %d\n", dni_usuario);
                            printf ("Medio de pago: Tarjeta de cr%cdito\n", 130);
                            switch (metodo_pago){
                                case 1:
                                    printf ("Tarjeta: Visa\n");
                                    break;
                                case 2:
                                    printf ("Tarjeta: American Express\n");
                                    break;
                                case 3:
                                    printf ("Tarjeta: Mercado Pago\n");
                                    break;
                                case 4:
                                    printf ("Tarjeta: Cabal\n");
                                    break;
                                }
                            printf ("Cuotas: 3\n");
                            printf ("Total de la operaci%cn: %d\n", 162, venta);
                            break;
                        case 3:
                            venta = venta + ((venta * 8) / 100);
                            printf ("-RESUMEN DE OPERACI%cN-\n", 224);
                            printf ("DNI %d\n", dni_usuario);
                            printf ("Medio de pago: Tarjeta de cr%cdito\n", 130);
                            switch (metodo_pago){
                                case 1:
                                    printf ("Tarjeta: Visa\n");
                                    break;
                                case 2:
                                    printf ("Tarjeta: American Express\n");
                                    break;
                                case 3:
                                    printf ("Tarjeta: Mercado Pago\n");
                                    break;
                                case 4:
                                    printf ("Tarjeta: Cabal\n");
                                    break;
                                }
                            printf ("Cuotas: 6\n");
                            printf ("Total de la operaci%cn: %d\n", 162, venta);
                            break;
                        case 4:
                            venta = venta + ((venta * 8) / 100);
                            printf ("-RESUMEN DE OPERACI%cN-\n", 224);
                            printf ("DNI %d\n", dni_usuario);
                            printf ("Medio de pago: Tarjeta de cr%cdito\n", 130);
                            switch (metodo_pago){
                                case 1:
                                    printf ("Tarjeta: Visa\n");
                                    break;
                                case 2:
                                    printf ("Tarjeta: American Express\n");
                                    break;
                                case 3:
                                    printf ("Tarjeta: Mercado Pago\n");
                                    break;
                                case 4:
                                    printf ("Tarjeta: Cabal\n");
                                    break;
                                }
                            printf ("Cuotas: 12\n");
                            printf ("Total de la operaci%cn: %d\n", 162, venta);
                            break;
                        default:
                            printf("Los datos son incorrectos\n");
                            break;
                    }              
                }
                else{
                    printf ("Los datos son incorrectos\n");
                }  
                break;
            default:
                printf ("Los datos son incorrectos\n");
                break;    
            }
    }
    else{
        printf ("Los datos son incorrectos, el DNI es invalido\n");
    }

    system("pause"); 
}