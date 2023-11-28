from usuario import *
from tipo_documento import *
from datetime import date


tipos_documentos = [TipoDocumento("DNI")] #lista objetos de la clase
my_usuario = Usuario("admin", "admin", "pepe", "pepito",date(1993,12,28), tipos_documentos[0])