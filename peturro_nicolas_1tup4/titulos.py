def agregar_titulo(list):
    opcn = ""
    dni_ingresado = int(input("Ingrese el DNI de el/la profesor/a: "))
    for profesor in list:
        if dni_ingresado == profesor['dni']:
            while opcn != "Salir":
                print("1. Agregar título\n2. Finalizar")
                opcn = int(input("Ingrese la opción que desea realizar: "))
                titulo_ingresado = input("Ingrese el título que desea ingresar: ")
                
                if opcn == 1:
                    horas_ingresadas = int(input("Ingrese el total de horas realizadas: "))
                    if horas_ingresadas > 190:
                        return titulo_ingresado, True
                    else:
                        print("El total de horas no alcanza para ingresar el titulo")
                        return False, ("")
                    
                elif opcn == 2:
                    opcn = "Salir"
                    print("Gracias!")
                    print("-------------------------")
                    return None                    
    
    print('DNI no encontrado.')
    return None