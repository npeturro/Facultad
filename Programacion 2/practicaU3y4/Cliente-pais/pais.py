from datetime import *
from provincia import *
from datos import *


class Pais():
    def __init__(self, nombre: str, codigo: int) -> None:
        self.__nombre = nombre
        self.__codigo = codigo
        self.__fecha_alta = datetime.now().date()
        self.__lista_provincias = []

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
    def lista_provincias(self) -> Provincia:
        return self.__lista_provincias

    
    
    
    def __str__(self) -> str:
        
        return f"Nombre: {self.nombre}\nCodigo: {self.codigo}\nFecha de alta: {self.__fecha_alta}\nLista de provincias: {self.lista_provincias}"

    def add_provincia(self, provincia: object):
        
        self.__lista_provincias.append(provincia)
        
    
    def remove_provincia(self, provincia):
        
        self.__lista_provincias.remove(provincia)
