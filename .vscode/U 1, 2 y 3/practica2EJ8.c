/* Actualizar el saldo de una cuenta bancaria, a partir de un retiro. Verificar que el saldo
sea mayor o igual que el importe a retirar.*/

#include <stdio.h>
#include <stdlib.h>

int main(){
    float saldo_bancario;
    float retiro_bancario;
    saldo_bancario = 648954.50;
    printf ("Bienvenido al cajero automatico\n");
    printf ("El total de su saldo es de: $%0.2f\n", saldo_bancario);
    printf ("Ingrese el total que desea retirar\n");
    scanf ("%f", &retiro_bancario);
    if (retiro_bancario <= saldo_bancario && retiro_bancario > 0){
        saldo_bancario = saldo_bancario - retiro_bancario;
        printf("El total de su cuenta es de %0.2f\n", saldo_bancario);
    }
    else{
        printf ("El monto a retirar no es valido\n");
    }
    system ("pause");
}