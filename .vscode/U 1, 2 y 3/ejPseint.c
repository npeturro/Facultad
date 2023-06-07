#include <stdio.h>
#include <stdlib.h>

int main () {
    int sueldo_base;
    int sueldo_final;
    int descuento;
    printf ("Ingrese sueldo base\n");
    scanf ("%d",&sueldo_base);
    descuento = ((sueldo_base * 10) / 100);
    sueldo_final = sueldo_base - descuento;
    printf ("El descuento realizado es de $%d y el sueldo final es de $%d\n", descuento, sueldo_final);
    system ("pause");
}