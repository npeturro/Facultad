
class ListaReproduccion():
    __prox_nro = 0

    def __init__(self, nombre: str):
        self.__nro = ListaReproduccion.get_prox_nro()
        self.__nombre = nombre
        self.__cantidad_videos = 0
        self.__videos = []

    @classmethod
    def get_prox_nro(cls):
        cls.__prox_nro += 1
        return cls.__prox_nro
    
    @property
    def nro(self):
        return self.__nro
    
    @property
    def nombre(self):
        return self.__nombre
    
    @nombre.setter
    def nombre(self, nuevo_nombre):
        self.__nombre = nuevo_nombre

    @property
    def cantidad_videos(self):
        return len(self.__videos)

    @cantidad_videos.setter
    def cantidad_videos(self):
        self.__cantidad_videos = len(self.__videos)

    def __str__(self):
        return f"{self.nombre} [{self.cantidad_videos}]"
    
    def add_video (self,video: object):
        self.__videos.append(video)

    def remove_video (self,video: object):
        self.__videos.remove(video)