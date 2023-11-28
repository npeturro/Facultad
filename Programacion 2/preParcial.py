import liquidaciones

list_empleados = [{'nombre': 'Carlos Alvarez', 'paga_hora': float(4000), 'cant_faltas': 0},
                  {'nombre': 'Pedro Sanchez', 'paga_hora': float(3500.5), 'cant_faltas': 2},
                  {'nombre': 'Alfonso Pilato', 'paga_hora': float(4000), 'cant_faltas': 1}
]

def menu():
    print("1 - Nuevo empleado")
    print("2 - Sumar falta a empleado")
    print("3 - Liquidar salarios")
    print("4 - Salir")

def nuevo_empleado():
    nombre = input("Ingrese nombre y apellido del empleado: ")
    nombre = nombre.title()
    paga_hora = int(input("Paga por hora: "))
    cant_faltas = 0
    empleados = {'nombre': nombre, 'paga_hora': paga_hora, 'cant_faltas': cant_faltas}
    print ("Empleado cargado con éxito!")
    return empleados 

def sumar_falta():
    
    empleados = input("Ingrese el nombre y apellido del empleado: ")
    empleados = empleados.title()
    for empleado in list_empleados:
        if empleados == empleado['nombre']:
            empleado['cant_faltas'] += 1
            print (f"El empleado {empleado['nombre']} tiene {empleado['cant_faltas']} faltas") 
            return None
    
    print("No se encontro el empleado")
    return None

print ("Bienvenido")
rta = ""

while rta != "Salir":
    menu()
    opt = int(input("Ingrese una opción: "))
    if opt == 1:
        empleados_nuevo = nuevo_empleado()
        list_empleados.append(empleados_nuevo)
    elif opt == 2:
        sumar_falta()
    elif opt == 3:
        liquidaciones.liqui(list_empleados)
    elif opt == 4:
        rta = "Salir"
        print("Hasta la proxima")