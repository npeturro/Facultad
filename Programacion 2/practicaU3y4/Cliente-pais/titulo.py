

class Titulo():
    def __init__(self, nombre: str, univerdidad: str):
        self.__nombre = nombre
        self.__universidad = univerdidad

    @property
    def nombre(self):
        return self.__nombre
    
    @nombre.setter
    def nombre(self, nuevo_nombre:str):
        self.__nombre = nuevo_nombre

    @property
    def universidad(self):
        return self.__universidad
    
    @universidad.setter
    def universidad(self, nueva_universidad:str):
        self.__universidad = nueva_universidad

    def __str__(self):
        return f"Nombre: {self.__nombre}\nUniversidad: {self.__universidad}"