from datos import *
from cliente import *
import os


print("\n¡Bienvenido!")
respuesta = ''

def menu():
    print("1 - Registrar cliente")
    print("2 - Buscar cliente")
    print("3 - Ver clientes registrados")
    print("4 - Salir")

def menu_cliente():
    print("1 - Modificar direccion")
    print("2 - Eliminar cliente")
    print("3 - Reactivar cliente")
    print("4 - Salir")

def registrar_pais():
    print("\nLISTA PAISES:")
    for indice, pais in enumerate(paises, 1):
        print(f"{indice} - {pais.nombre}")
    opc2 = int(input("\n Seleccione pais del cliente: "))
    pais_selec = paises[opc2-1]
    print("\nLISTA PROVINCIAS:")
    #--REGISTRANDO PROVINCIA--#
    for indice, provincia in enumerate(pais_selec.lista_provincias, 1):
        print(f"{indice} - {provincia.nombre}")
    opc2 = int(input("\n Seleccione provincia del cliente: "))
    provincia_selec = provincias[opc2-1]
    print("\nLISTA LOCALIDADES:")
    #--REGISTRANDO LOCALIDAD--#
    for indice, localidad in enumerate(provincia_selec.lista_localidad, 1):
        print(f"{indice} - {localidad.nombre}")
    opc2 = int(input("\n Seleccione localidad del cliente: "))
    localidad = localidades[opc2-1].nombre


while respuesta != "Salir":
    menu()
    opc = input("\n Ingrese la opción de menú: ")
    os.system ("cls")
    if opc.isnumeric():
        
        #---REGISTRAR CLIENTE---#
        
        if int(opc) == 1:
            nombreApellido = input("\n Ingrese nombre y apellido del cliente: ")
            
            #--REGISTRANDO PAIS--#
            registrar_pais()
            os.system ("cls")
            direccion = input("\n Ingrese direccion del cliente: ")

            cliente = Cliente(nombreApellido, direccion)
            listaClientes.append(cliente)
            print(f"\nCliente {cliente.nombre_apellido} agregado con éxito")
            print("-" * 30)
            print("DATOS:")
            print(cliente.__str__())
            print("")

        
        #---MODIFICAR CLIENTE---#
        
        elif int(opc) == 2:
            
            #---BUSCANDO CLIENTE---#
            nroCliente = int(input("\n Ingrese el numero del cliente: "))
            for cliente in listaClientes:
                if cliente.nro_cliente == nroCliente:
                    print(f"\nCliente {cliente.nombre_apellido} encontrado con éxito\n")

                    respuesta2 = ""
                    while respuesta2 != "Salir":
                        menu_cliente()
                        opc3 = int(input("\n Ingrese la opción de menú: "))
                        os.system ("cls")

                        #---MODIFICAR DIRECCION DEL CLIENTE---#
                        if opc3 == 1:
                            registrar_pais()

                            nueva_direccion = input("\n Ingrese nueva direccion del cliente: ")
                            cliente.direccion = nueva_direccion
                            print("\nDireccion de cliente modificada con éxito\n")
                            print(cliente.__str__())
                            print("")

                        #---ELIMINAR CLIENTE---#
                        elif opc3 == 2:
                            
                            cliente.eliminar_cliente()
                            print("\nCliente eliminado con éxito\n")
                            print(cliente.__str__())
                            print("")

                        #---REACTIVAR CLIENTE---#
                        elif opc3 == 3:
                            
                            cliente.reactivar_cliente()
                            print("\nCliente reactivado con éxito\n")
                            print(cliente.__str__())
                            print("")
                            
                        elif opc3 == 4:
                            respuesta2 = "Salir"
                
                else:
                    print("Nro de cliente no encontrado")
        
        
        elif int(opc) == 3:
            
            for indice, cliente in enumerate(listaClientes,1):
                print(f"DATOS CLIENTE {indice}")
                print(cliente.__str__())
                print("-" * 30)
                print("")

        elif int(opc) == 4:
            respuesta = "Salir"
            print("Hasta luego")





            
