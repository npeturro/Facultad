import titulos

list_profesores = []

def menu():
    print("1 - Registrar profesor")
    print("2 - Agregar nuevo título")
    print("3 - Mostrar resumen")
    print("4 - Salir")

def registrar_profesor():
    nombre = input("Ingrese nombre y apellido del profesor/a: ")
    nombre = nombre.title()
    dni = int(input("DNI: "))
    antiguedad = int(input('Ingrese antiguedad en meses: '))
    titulos = []
    cantidad_titulos = 0
    while antiguedad < 6:
        print ('Valor incorrecto, recuerde que debe ser mayor a 6 meses')
        antiguedad = int(input("Ingrese nuevamente la antiguedad: "))
    profesores = {'nombre': nombre, 'dni': dni, 'antiguedad': antiguedad, 'cantidad_titulos': cantidad_titulos, 'titulos': titulos}
    print ("Profesor/a registrado/a con éxito!")
    print("-------------------------")
    return profesores

def mostrar_resumen():
    list_ord = sorted(list_profesores, key=lambda x: x["cantidad_titulos"], reverse=True)

    print("Cantidad total de profesores evaluados: 23")
    print("-------------------------")
    for profesor in list_ord:
            print(f"Profesor: {profesor['nombre']} - DNI: {profesor['dni']} - Antigüedad: {profesor['antiguedad']} meses")
            print(f"Títulos: {profesor['titulos']}")
            print(f"Cantidad de títulos: {profesor['cantidad_titulos']}")
            print("-------------------------")

print ("Bienvenido")
rta = ""

while rta != "Salir":
    menu()
    opt = int(input("Ingrese una opción: "))
    if opt == 1:
        profesor_nuevo = registrar_profesor()
        list_profesores.append(profesor_nuevo)
    elif opt == 2:
        datos = titulos.agregar_titulo(list_profesores)
        #hasta aca llegue
        
    elif opt == 3:
        mostrar_resumen()
    elif opt == 4:
        rta = "Salir"
        print("Gracias! Saliendo ..")