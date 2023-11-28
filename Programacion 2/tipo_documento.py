from usuario import *
from tipo_documento import *

class TipoDocumento():
    def __init__(self, tipo_documento):
        self.__tipo_documento = tipo_documento


@property
def tipo_documento(self):
    return self._tipo_documento
