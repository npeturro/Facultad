#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

/*void main()
{
    int number = 1;
    while (number>0)
    {
        printf("Ingrese un n%cmero\n", 163);
        printf("A continuaci%cn, presione 0 para salir\n", 162);
        scanf("%d", &number);
        
        if ((number%2) == 0) {
            printf("El n%cmero es par\n", 163);
        }
        else{
            printf("El n%cmero es impar\n");
        }
    }
    system("pause");
}
*/

/*void main()
{
    char x[] = {"Hola"};
    char a[] = {" como andas??"};

    strcat(x,a);

    printf("%f\n", x);

    system("pause");
}*/

void main()
{
    char x[] = {"Hola!"};
    char a[] = {"Que tal"};
    int f = 9;

    int lado1;
    int lado2;
    int hipotenusa;
    int perimetro;
    int superficie;
    printf("Ingrese el valor del primer lado\n");
    scanf("%d",&lado1);
    printf("Ingrese el valor del segundo lado\n");
    scanf("%d",&lado2);
    hipotenusa = sqrt(lado1*lado1 + lado2*lado2);

    strcat(x,a);

    strlen(x);
    
    printf("%s %d\n", x, strlen(x));
    
    system("pause");


}
