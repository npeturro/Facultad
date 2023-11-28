from mascota import *

#Estas son subclases de la superclase que es Mascota
class Cat(Mascota):
    def __init__(self, name: str) -> None:
        self.name = name