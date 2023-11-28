from tipo_documento import *
from veterinario import *
from cliente import *

tipos_documentos = [TipoDocumento("DNI"), TipoDocumento("LC"), TipoDocumento("LE")]
clientes = []
mascotas = []
veterinario = Veterinario("Juan", "Perez", "34541574", "XXLV123")

while True:
    print("1. Dar de alta cliente")
    print("2. Dar de alta mascota")
    opt = input("Ingrese una opcion: ")

    if opt == "1":
        nombre = input("Ingrese el nombre: ")
        apellido = input("Ingrese el apellido: ")
        nro_documento = input("Ingrese el dni: ")

        for i, tipo_documentos in enumerate(tipos_documentos, 1):
            print(f"{i} {tipo_documentos}")
        
        tipo = int(input("Ingrese el numero del tipo de documento: "))
        
        clientes.append(Cliente(nombre,apellido, nro_documento, tipos_documentos[tipo-1]))
        print(clientes[0])
    if opt =="2":
        pass
    else:
        break