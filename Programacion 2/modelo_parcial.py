#Suponga que tiene que desarrollar un sistema para un estacionamiento.
#1. Crear una clase llamada Vehiculo con atributos patente, y descripcion(opcional vacio por
#defecto)
#Implementar los siguientes métodos:
#1. Un constructor
#2. mostrar(): muestra los datos del vehiculo
#3. validarPatente(): Valida que la patente tenga 6 u 8 caracteres
#2. Crear una clase llamada Estadia con atributos Vehiculo, hora de entrada y salida.
#Implementar los siguientes métodos:
#1. Un constructor
#2. mostrar(): Debera mostrar TODOS los datos de la Estadia
#3. calcularTarifaTotal(tarifaPorHora): Deberá retornar el valor de la tarifa total en pesos
#teniendo encuenta la entrada y salida y la tarifa por hora. Si la patente es invalida o la entrada más
#reciente que la salida deberá informar un error.

class Vehiculo:
    def __init__(self, patente, descripcion = ""):
        self.patente = patente
        self.descripcion = descripcion

    def mostrar(self):
        print(self.patente)
        print(self.descripcion)
    
    def validarPatente(self):
        if len(self.patente) == 6 or len(self.patente) == 8:
            return True
        else:
            return False
        
class Estadia:
    def __init__(self, vehiculo, hora_entrada, hora_salida):
        self.vehiculo = vehiculo
        self.hora_entrada = hora_entrada
        self.hora_salida = hora_salida

    def mostrar(self):
        self.vehiculo.mostrar()
        print(self.hora_entrada)
        print(self.hora_salida)

    def calcularTarifaTotal(self, tarifa):
        if(self.vehiculo.validarPatente()==True):
            if(self.hora_salida >=self.hora_entrada):
                return (self.hora_salida - self.hora_entrada) * tarifa



automovil = Vehiculo("ASD123", "El auto es negro")
estadia = Estadia(automovil, 6,16)
estadia.mostrar()
print(estadia.calcularTarifaTotal(40))