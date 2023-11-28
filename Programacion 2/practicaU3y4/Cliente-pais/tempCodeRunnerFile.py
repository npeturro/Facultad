from cliente import *
from datos import *
from pais import *
import os

clientes = []

print("\n¡Bienvenido!")
respuesta = ''

def menu():
    print("1 - Registrar cliente")
    print("2 - Buscar cliente")
    print("3 - Salir")

def menu_cliente():
    print("1 - Modificar direccion")
    print("2 - Eliminar cliente")
    print("3 - Reactivar cliente")
    print("3 - Salir")

while respuesta != "salir":
    menu()
    opc = input("\n Ingrese la opción de menú: ")
    os.system ("cls")
    if opc.isnumeric():
        
        #---REGISTRAR CLIENTE---#
        
        if int(opc) == 1:
            nombreApellido = input("Ingrese nombre y apellido del cliente: ")
            
            print("LISTA PAISES:")
            #--REGISTRANDO PAIS--#
            for indice, pais in enumerate(paises, 1):
                print(f"{indice} - {pais.nombre}")
            opc2 = int(input("Seleccione pais del cliente: "))
            pais = paises[opc2-1].nombre
            print("LISTA PROVINCIAS:")
            #--REGISTRANDO PROVINCIA--#
            for indice, provincia in enumerate(provincias, 1):
                print(f"{indice} - {provincia.nombre}")
            opc2 = int(input("Seleccione provincia del cliente: "))
            provincia = provincias[opc2-1].nombre
            print("LISTA LOCALIDADES:")
            #--REGISTRANDO LOCALIDAD--#
            for indice, localidad in enumerate(localidades, 1):
                print(f"{indice} - {localidad.nombre}")
            opc2 = int(input("Seleccione localidad del cliente: "))
            localidad = localidades[opc2-1].nombre

            direccion = input("Ingrese direccion del cliente: ")

            clienteUp = Cliente(nombreApellido, direccion)

            clientes.append(clienteUp)