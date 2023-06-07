/*La compañía que gestiona la autopista ha decidido cambiar las tarifas de peaje. Estas tarifas
dependen de:
● Tipo de vehículo (camión, automóvil o moto) que desee utilizar la autopista
● Número de pasajeros que lleve
● Tipo horario del día:
Horario A: horas de “Alta” congestión:
● Los automóviles con tres pasajeros o más no pagan peaje
● Los camiones pagan $300
● Las motos pagan $100
Horario B: horas de “Baja” congestión:
● Los automóviles pagan $150
● Los camiones pagan $200
● Las motos no pagan peaje
En este horario la tarifa es independientemente del número de pasajeros.
Escriba un programa que leyendo el tipo de vehículo, tipo de horario de congestión alta o baja
y el número de pasajeros, calcule la tarifa que le debe cobrar a un vehículo. Validar que el tipo
de vehículo sea uno de los mencionados y que el número de pasajeros no sea mayor a 5.*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

void main()
{
    int time;
    int passenger = 0, type_of_vehicle = 0, condition = 0;

    while (condition == 0)
    {
        printf("BIENVENIDO\n");
        system("pause");

        printf("Seleccione el horario del d%ca\n", 161);
        printf("1 - Alta congesti%cn\n", 162);
        printf("2 - Baja congesti%cn\n", 162);
        scanf("%d", &time);
        printf ("Seleccione tipo de veh%cculo\n");
        printf ("1 - Cami%cn\n", 162);
        printf ("2 - Autom%cvil\n", 162);
        printf ("3 - Moto\n");
        scanf("%d", &type_of_vehicle);

        if (time == 1){
            switch (type_of_vehicle){
                case 1:{
                    printf("Valor del peaje: $300\n");
                    break;
                }
                case 2:{
                    printf("Ingrese la cantidad de pasajeros\n");
                    scanf("%d", &passenger);
                    if (passenger >= 3 || passenger <= 5){
                        printf("Valor del peaje: Gratis\n");
                    }
                    else if(passenger > 5){
                        printf("Excede el l%cmite de pasajeros\n", 161);
                    }
                    else{
                        printf("Valor del peaje: $100\n");
                    }
                    break; 
                }
                case 3:{
                    printf("Valor del peaje: $100\n");
                }
            }
        }
        if (time == 2){
           switch (type_of_vehicle){
               case 1:{
                   printf("Valor del peaje: 200\n");
                   break;
               }
               case 2:{
                   printf("Valor del peaje: 150\n");
                   break; 
               }
               case 3:{
                   printf("Valor del peaje: Gratis\n");
               }
            }
        }
    }
    system("pause");

}