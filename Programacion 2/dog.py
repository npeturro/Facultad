from mascota import *

#Estas son subclases de la superclase que es Mascota
class Dog(Mascota):
    def __init__(self, name: str, age: int) -> None: #recibe nombre y edad
        super().__init__(name, age) #llamo al constructor de mascotas y le paso name. La función super() es una función especial que le permite llamar a un método de otra clase superior en la jerarquía
        self.__peso = float(0) #Creo q significa que es privado __

        
    #getter
    @property
    def peso(self) -> float:
        if self.__peso > 0:
            return self.__peso
        return "jasasd"
    
    #setter
    @peso.setter
    def peso(self) -> float:
        if self.__peso > 0:
            return self.__peso
        return "jasasd"
