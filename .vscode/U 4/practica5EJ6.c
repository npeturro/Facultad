/*. Ingrese por teclado la facturación de los últimos 6 meses. Informar:
- La facturación total
- El promedio de facturación
- La máxima facturación
- La mínima facturación*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
    float facturacion_mensual[6];
    float facturacion_total = 0, minima_facturacion = 100, maxima_facturacion = 0, promedio_facturacion = 0;
    int mes_actual = 0, mes_mayor, mes_menor = 0;


    for (int i = 0; i < 6; i++)
    {
        mes_actual = i + 7;
        printf("Ingrese el total de la facturaci%cn correspondiente al mes %d\n", 162, mes_actual);
        scanf("%f", &facturacion_mensual[i]);

        facturacion_total = facturacion_total + facturacion_mensual[i];

        if (facturacion_mensual[i] > maxima_facturacion){
            maxima_facturacion = facturacion_mensual[i];
            mes_mayor = mes_actual;
        } 
        
        if (facturacion_mensual[i] < minima_facturacion){
            minima_facturacion = facturacion_mensual [i];
            mes_menor = mes_actual;
        }

    }
    promedio_facturacion = facturacion_total / 6;

    printf ("El total de los %cltimos meses de facturaci%cn es de un %0.2f porciento\n",163, 162, facturacion_total);
    printf ("La m%cxima facturaci%cn es del mes %d con un %0.2f porciento\n",160, 162, mes_mayor, maxima_facturacion);
    printf ("La m%cnima facturaci%cn es del mes %d con un %0.2f porciento\n", 161, 162, mes_menor, minima_facturacion);
    printf ("El promedio total es de un %0.2f porciento\n", promedio_facturacion);


    system ("pause");

}