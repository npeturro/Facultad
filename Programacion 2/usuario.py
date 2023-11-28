from datetime import date
from persona import *

# Codificar todos los atributos privados con @property.
#Para crear (instanciar) un usuario:
#Se ingresa el user_name y email. Se asigna en fecha_alta la fecha del día y estado True.
#Luego se le solicita al usuario que ingrese su contraseña.
#Una vez creado el usuario al mismo no se le puede cambiar el user_name(sólo lectura).
#Luego de creado el usuario, se pueden ingresar los demás datos del usuario.
#Al dar de baja el usuario, el mismo no se elimina, si no que su estado cambia a False y se le
#asigna en fecha_baja la fecha del día.
#Al validar las credenciales, se retorna verdadero si el usuario y pass ingresado coincide con el
#user_name y password el usuario; en caso contrario se retorna False. 

class Usuario(Persona):
    def __init__(self, user_name, email, nombre, apellido, fecha_nacimiento, tipo_documento):
        super().__init__(self, nombre, apellido, fecha_nacimiento, tipo_documento)
        self.__user_name = user_name
        self.__email = email
        self.__fecha_alta = date.today()
        self.__estado = True
        self.__password = None
        self.__fecha_baja = None
        self.__libro = [] #se crea vacia y se van agregando con un append o borrando con un pop
    #Con setter puedo variar entre readonly o no
    #getter. De esta manera solo obtengo el valor, no lo modifico
    
    @property #esto es getter porque no lo quiero modificar. Solo traerlo
    def user_name(self):
        return self.__user_name

    @property
    def email(self):
        return self.__email
    
    
    @property
    def fecha_alta(self):
        return self.__fecha_alta
    
    @__email.setter #con setter puedo modificar los valores 
    def __email(self, nuevo_email):
        self.__email = nuevo_email

    
    @property
    def estado(self):
        return self.__estado
    
    @__estado.setter
    def __estado(self, nuevo_estado):
        self.__email = nuevo_estado
    
    @property
    def password(self):
        return self.__password
    
    @__password.setter
    def __password(self, nuevo_password):
        self.__password = nuevo_password
    
    @property
    def fecha_baja(self):
        return self.__fecha_baja

    def validar(self, user_name: str, password: str):
        if self.__user_name == user_name and self.__password == password:
            return True
        return False
    
    def baja(self):
        self.__estado = False
        self.__fecha_baja = date.today()

    