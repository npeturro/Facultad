

class Usuario():
    def __init__(self, nombre: str, apellido: str, email: str, password: str):
        self.__nombre = nombre
        self.__apellido = apellido
        self.__email = email
        self.__password = password

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
    def password(self):
        return self.__password
    
    @password.setter
    def password(self, nueva_password:str):
        self.__password = nueva_password

    def __str__(self):
        return f"Nombre: {self.nombre}\nApellido: {self.apellido}\nEmail: {self.email}"
    
    def validar_credenciales(self, email: str, password: str):
        return email == self.email and password == self.password