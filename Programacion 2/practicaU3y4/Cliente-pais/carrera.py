from datetime import *

class Carrera():
    def __init__(self, nombre: str, comienzo: date):
        self.__nombre = nombre
        self.__cantidad_titulos_requeridos = 0
        self.__comienzo = comienzo
        self.__titulos = []

    @property
    def nombre(self):
        return self.__nombre
    
    @nombre.setter
    def nombre(self, nuevo_nombre:str):
        self.__nombre = nuevo_nombre
    
    @property
    def cantidad_titulos_requeridos(self):
        return self.__cantidad_titulos_requeridos
    
    @cantidad_titulos_requeridos.setter
    def cantidad_titulos_requeridos(self):
        self.__cantidad_titulos_requeridos = len(self.titulos)
    
    @property
    def comienzo(self):
        return self.__comienzo
    
    @comienzo.setter
    def comienzo(self, nuevo_comienzo:str):
        self.__comienzo = nuevo_comienzo

    @property
    def titulos(self):
        return self.__titulos
    
    @titulos.setter
    def titulos(self, nuevo_titulos:str):
        self.__titulos = nuevo_titulos

    def __str__(self) -> str:
        return f"Nombre: {self.nombre}\nCantidad de títulos: {self.cantidad_titulos_requeridos}\nComienzo: {self.comienzo}"

    def add_titulo (self,titulo: object):
        self.__titulos.append(titulo)

    def remove_titulo (self,titulo: object):
        self.__titulos.remove(titulo)