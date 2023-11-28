from datetime import *
from localidad import *
from datos import *

class Provincia():
    def __init__(self, nombre: str, codigo: int) -> None:
        self.__nombre = nombre
        self.__codigo = codigo
        self.__fecha_alta = datetime.now().date()
        self.__lista_localidad = []

    @property
    def nombre(self):
        return self.__nombre
    
    @nombre.setter
    def nombre(self, nuevo_nombre:str):
        self.__nombre = nuevo_nombre

    @property
    def codigo(self):
        return self.__codigo
    
    @property
    def lista_localidad(self):
        return self.__lista_localidad

    
    
    
    def __str__(self) -> str:
        
        return f"Nombre: {self.nombre}\nCodigo: {self.codigo}\nFecha de alta: {self.__fecha_alta}\nLista de localidades: {self.lista_localidad}"

    def add_localidad(self, localidad):
        
        
        self.__lista_localidad.append(localidad)
        
    
    def remove_localidad(self, localidad):
        
        self.__lista_localidad.remove(localidad)