
class Aspirante():
    def __init__(self, nombre: str, apellido: str, email: str, num_telefono: str):
        self.__nombre = nombre
        self.__apellido = apellido
        self.__email = email
        self.__num_telefono = num_telefono
        self.__titulos = []

    @property
    def nombre(self):
        return self.__nombre
    
    @nombre.setter
    def nombre(self, nuevo_nombre:str):
        self.__nombre = nuevo_nombre

    @property
    def apellido(self):
        return self.__apellido
    
    @apellido.setter
    def apellido(self, nuevo_apellido:str):
        self.__apellido = nuevo_apellido

    @property
    def email(self):
        return self.__email
    
    @email.setter
    def email(self, nuevo_email:str):
        self.__email = nuevo_email

    @property
    def num_telefono(self):
        return self.__num_telefono
    
    @num_telefono.setter
    def num_telefono(self, nuevo_num_telefono:str):
        self.__num_telefono = nuevo_num_telefono

    @property
    def titulos(self):
        return self.__titulos
    
    @titulos.setter
    def titulos(self, nuevo_titulos:str):
        self.__titulos = nuevo_titulos

    def __str__(self):
        return f"Nombre: {self.nombre}\nApellido: {self.apellido}\nEmail: {self.email}\nTelefono: {self.num_telefono}"

    def add_titulo (self,titulo: object):
        self.__titulos.append(titulo)

    def remove_titulo (self,titulo: object):
        self.__titulos.remove(titulo)