from estadia import *
from precio import *
import os

respuesta = ''

def menu():
    print("1 - Ingresar estadia")
    print("2 - Finalizar estadia")
    print("3 - Salir")

while respuesta != "salir":
    menu()
    opt = input("\n Ingrese la opción de menú: ")
    os.system ("cls") #Limpiar pantalla
    if opt.isnumeric():
        if int(opt) == 1:
            pass
        elif int(opt) == 2:
            pass
        elif int(opt) == 3:
            respuesta = "salir"
        else: print("Ingrese una opción válida")
    else: 
        print("Ingrese una opción numérica")
    
    input("Presione cualquier tecla para continuar....") # Pausa

print("Hasta luego!.")