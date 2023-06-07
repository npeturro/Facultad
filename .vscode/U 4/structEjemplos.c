#include <stdio.h>
#include <string.h>


struct Book // siempre se declara fuera del main
{
    char title[50];
    char author[50];
    char subject[100];
    int book_id;
};
void main( )
{
    struct Book book1; /* Declaración Book1 de tipo Book */
    struct Book book2; /* Declaración Book2 de tipo Book */
    /* Especificación de Book1 */
    strcpy( book1.title, "C Programming"); // se esta asignando la informacion en title
    strcpy( book1.author, "Nuha Ali");
    strcpy( book1.subject, "C Programming Tutorial");
    book1.book_id = 6495407; //no utiliza strcpy ya que es un INT
    /* Especificación de Book2 */
    strcpy( book2.title, "Telecom Billing");
    strcpy( book2.author, "Zara Ali");
    strcpy( book2.subject, "Telecom Billing Tutorial");
    book2.book_id = 6495700;
    /* Imprimir la información de Book1 */
    printf( "Book 1 title : %s\n", book1.title);
    printf( "Book 1 author : %s\n", book1.author);
    printf( "Book 1 subject : %s\n", book1.subject);
    printf( "Book 1 book_id : %d\n", book1.book_id);
    /* Imprimir la información de Book2 */
    printf( "Book 2 title : %s\n", book2.title);
    printf( "Book 2 author : %s\n", book2.author);
    printf( "Book 2 subject : %s\n", book2.subject);
    printf( "Book 2 book_id : %d\n", book2.book_id);
}


//Ejemplos con array

#include <stdio.h>
#include <string.h>
struct student
{
    int id;
    char name[30];
    float percentage;
};
void main()
{
    int i;
    struct student students[3];
    // Estudiante 1
    students[0].id=1;
    strcpy(students[0].name, "Sabrina");
    students[0].percentage = 86.5;
    // Estudiante 2
    students[1].id=2;
    strcpy(students[1].name, "Juan");
    students[1].percentage = 90.5;
    // Estudiante 3
    students[2].id=3;
    strcpy(students[2].name, "Ana");
    students[2].percentage = 81.5;
    for(i = 0; i < 3; i++)
    {
        printf(" Registros de STUDENT : %d \n", i+1);
        printf("Legajo: %d \n", students[i].id);
        printf("Nombre: %s \n", students[i].name);
        printf("Porcentaje: %f\n", students[i].percentage);
    }
}

