from datetime import *

class Estadia():
    def __init__(self, fecha, nro_patente: str):
        self.__fecha = fecha
        self.__nro_patente = nro_patente
        self.__hora_entrada = datetime.now().time()
        self.__hora_salida = ""
        self.__cant_horas = ""
        self.__estado = "ACTIVO"
        self.__pagado = False


@property
def fecha(self):
    return self.__fecha

@property
def nro_patente(self):
    return self.__nro_patente

@property
def hora_entrada(self):
    return self.__hora_entrada

@property
def hora_salida(self):
    return self.__hora_salida

@property
def cant_horas(self):
    return self.__cant_horas

@property
def estado(self):
    return self.__estado

@property
def pagado(self):
    return self.__pagado

@estado.setter
def estado(self, nuevo_estado):
    self.__estado = nuevo_estado

def __str__(self):
    return print (f"Fecha: {self.__fecha}, Nro. Patente: {self.__numero_patente}, Hora entrada: {self.__hora_entrada}, Hora salida: {self.__hora_salida}, Cant. Horas: {self.__cant_horas}, Estado: {self.__estado}, Pagado: {self.__pagado}")

def registrar_salida(self, hora_salida):
    self.__estado = "PAGADO"
    self.__pagado = True
    self.__hora_salida = hora_salida
    return

def calcular_horas_estadia(entrada, salida):
    formato = "%H:%M"
    
    try:
        hora_entrada = datetime.strptime(entrada, formato)
        hora_salida = datetime.strptime(salida, formato)
        
        diferencia = hora_salida - hora_entrada
        horas_totales = diferencia.total_seconds() / 3600  # 3600 segundos en una hora
        return horas_totales
    except ValueError:
        return "Formato de hora incorrecto. Debe ser 'HH:MM'."