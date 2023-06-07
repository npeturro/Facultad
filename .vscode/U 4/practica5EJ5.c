/*Dado el vector inflación {0.8, 0.1, 0.3, 0.4, 0.3, 0.6, 0.5, 0.3, 0.7, 0.3, 0.2, 0.9}
Cada ítem del vector representa la inflación de un mes de tal manera que el primer
ítem del vector que es 0.8 representa la inflación de Enero, y el último ítem del vector
que es 0.9 representa la inflación de diciembre. Se pide:
- Informar la inflación anual
- Informar la inflación más baja, junto con el nro. de mes. Por ejemplo: Mes 2 = 0.1
- Informar la inflación más alta, junto con el nro. de mes. Por ejemplo: Mes 12 = 0.9*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
    float vector_inflacion[] = {0.8, 0.1, 0.3, 0.4, 0.3, 0.6, 0.5, 0.3, 0.7, 0.3, 0.2, 0.9};
    float inflacion_anual = 0, inflacion_baja = vector_inflacion[0], inflacion_alta = 0;
    int mes_alto, mes_bajo;

    
    for (int i = 0; i < 12; i++)
    {
        inflacion_anual = inflacion_anual + vector_inflacion[i];

        if (vector_inflacion[i] > inflacion_alta){
            inflacion_alta = vector_inflacion[i];
            mes_alto = i + 1;
        }
        else{
            if (vector_inflacion[i] < inflacion_baja){
                inflacion_baja = vector_inflacion [i];
                mes_bajo = i + 1;
            }
        }

    }
    printf ("El total de la inflaci%cn anual es de %0.1f porciento\n", 162, inflacion_anual);
    printf ("La inflaci%cn m%cs alta es del mes %d con un %0.1f porciento\n", 162, 160, mes_alto, inflacion_alta);
    printf ("La inflaci%cn m%cs baja es del mes %d con un %0.1f porciento\n", 162, 160, mes_bajo, inflacion_baja);

    system ("pause");

}