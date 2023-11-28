from datetime import *
from usuario import *

class Video():

    def __init__(self, nombre: str, usuario) -> None:
        self.__nombre = nombre
        self.__fecha_publicacion = date.today().strftime("%d/%m/%Y")
        self.__palabras_claves = []
        self.__usuario = usuario

    @property
    def nombre(self):
        return self.__nombre
    
    @nombre.setter
    def nombre(self, nuevo_nombre:str):
        self.__nombre = nuevo_nombre
    
    @property
    def fecha_publicacion(self):
        return self.__fecha_publicacion
    
    def __str__(self) -> str:
        
        return f"Nombre: {self.nombre} [ Autor: {self.__usuario.nombre} - Publicado: {self.fecha_publicacion} ]"

    def add_tag (self,tag: object):
        self.__palabras_claves.append(tag)

    def remove_tag (self,tag: object):
        self.__palabras_claves.remove(tag)
