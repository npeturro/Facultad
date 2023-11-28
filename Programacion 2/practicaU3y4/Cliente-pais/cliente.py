from datetime import *

class Cliente():

    __prox_nro_cliente = 0

    def __init__(self, nombre_apellido: str, direccion: str) -> None:
        self.__nombre_apellido = nombre_apellido
        self.__direccion = direccion
        self.__nro_cliente = Cliente.get_nro_cliente()
        self.__fecha_alta = datetime.now().date()
        self.__fecha_baja = None

    @classmethod
    def get_nro_cliente(cls):
        cls.__prox_nro_cliente += 1
        return cls.__prox_nro_cliente

    @property
    def nombre_apellido(self):
        return self.__nombre_apellido
    
    @nombre_apellido.setter
    def nombre_apellido(self, nuevo_nombre_apellido:str):
        self.__nombre_apellido = nuevo_nombre_apellido

    @property
    def direccion(self):
        return self.__direccion
    
    @direccion.setter
    def direccion(self, nueva_direccion:str):
        self.__direccion = nueva_direccion

    @property
    def nro_cliente(self):
        return self.__nro_cliente
    
    @property
    def fecha_alta(self):
        return self.__fecha_alta
    
    @property
    def fecha_baja(self):
        return self.__fecha_baja
    
    @fecha_baja.setter
    def fecha_baja(self, nueva_fecha_baja:str):
        self.__fecha_baja = nueva_fecha_baja
    



    def __str__(self) -> str:
        
        return f"Nombre y apellido: {self.nombre_apellido}\nDireccion: {self.direccion}\nNro de cliente: {self.nro_cliente}\nFecha de alta: {self.fecha_alta}\nFecha de baja: {self.fecha_baja}"

    def eliminar_cliente(self):
        
        self.fecha_baja = datetime.now().date()

    def reactivar_cliente(self):
        
        self.fecha_baja = None

