from datetime import date
from tipo_documento import *


class Persona():
    def __init__(self, nombre, apellido, fecha_nacimiento: date, tipo_documento: TipoDocumento, numero_documento):
        self._nombre = nombre
        self._apellido = apellido
        self._fecha_nacimiento = fecha_nacimiento
        # edad calcular /
        self._tipo_documento = tipo_documento
        self._numero_documento = numero_documento

    @property
    def edad(self) -> int:
        return date.today().year - self._fecha_nacimiento.year
    
    @property
    def nombre(self):
        return self._nombre
    
    @property
    def apellido(self):
        return self._apellido
    
    @property
    def fecha_nacimiento(self):
        return self._fecha_nacimiento
    
    @_nombre.setter
    def _nombre(self, nuevo_nombre):
        self._nombre = nuevo_nombre
    
    @_apellido.setter
    def _apellido(self, nuevo_apellido):
        self._apellido = nuevo_apellido

    @_fecha_nacimiento.setter
    def _fecha_nacimiento(self, nuevo_fecha_nacimiento):
        self._fecha_nacimiento = nuevo_fecha_nacimiento
    
