from datetime import *
from aspirante import *
from carrera import *

class Inscripcion():
    __prox_nro = 0

    def __init__(self, aspirante, carrera):
        self.__nro = Inscripcion.get_prox_nro()
        self.__fecha_inscripcion = date.today().strftime("%Y/%m/%d")
        self.__inscripcion_activa = True
        self.__aspirante = aspirante
        self.__carrera = carrera

    @classmethod
    def get_prox_nro(cls):
        cls.__prox_nro += 1
        return cls.__prox_nro
    
    @property
    def nro(self):
        return self.__nro
    
    @property
    def fecha_inscripcion(self):
        return self.__fecha_inscripcion
    
    @property
    def inscripcion_activa(self):
        return self.__inscripcion_activa
    
    @inscripcion_activa.setter
    def inscripcion_activa(self, nueva_inscripcion):
        self.__inscripcion_activa = nueva_inscripcion

    def __str__(self):
        return f"Número: {self.nro}\nFecha de inscripción: {self.fecha_inscripcion}"