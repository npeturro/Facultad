class Mascota():
    def __init__(self, name: str, age: int) -> None:
        self.name = name
        self.age = age

        def get_age(self) -> int:
            return self.__age
    
        def set_age(self, new_age: int) -> int:
            if new_age < 0:
                self.__age = new_age
            else:
                raise Exception("La edad debe ser mayor a 0")