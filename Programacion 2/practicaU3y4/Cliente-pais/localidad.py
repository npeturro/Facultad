from datetime import *

class Localidad():
    def __init__(self, nombre: str, codigo: int, cod_posta: int) -> None:
        self.__nombre = nombre
        self.__codigo = codigo
        self.__cod_postal = cod_posta
        self.__fecha_alta = datetime.now().date()

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
    def codigoPostal(self):
        return self.__cod_postal
    
    @codigoPostal.setter
    def codigoPostal(self, nuevo_codigoPostal:str):
        self.__cod_postal = nuevo_codigoPostal

    
    
    
    def __str__(self) -> str:
        return f"Nombre: {self.nombre}\nCodigo: {self.codigo}\nCodigo postal: {self.codigoPostal}\nFecha de alta: {self.__fecha_alta}"