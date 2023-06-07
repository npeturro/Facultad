/*Ingresar el valor de una venta y aplicar el 15% de descuento si el valor es >= 100000 y
un 10% si es menor. Validar que la venta sea mayor que 0, caso contrario informar
dicha situación.*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    int venta;
    printf("Ingrese el valor de la venta\n");
    scanf("%d", &venta);
    if (venta > 0){
        if (venta >= 100000){
            venta = venta - (venta * 0.15);
            printf ("Su venta tiene un 15 de descuento, el total es de %d\n", venta);                    
        }
        else{
            venta = venta - (venta * 0.10);
            printf ("Su venta tiene un 10 de descuento, el total es de %d\n", venta);
        }
    }
    else{
        printf("El valor ingresado no es valido\n");
    }
    system ("pause");
}