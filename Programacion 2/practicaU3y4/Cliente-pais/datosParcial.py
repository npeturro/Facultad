from carrera import *
from inscripcion import *
from titulo import *
from aspirante import *

inscripciones = []

aspirantes = [
    Aspirante("Nicolas", "Peturro", "prueba@gmail.com", "3415555555"),
    Aspirante("Juan", "Sarasa", "sarasa@gmail.com", "3416666666")
]

carreras = [
    Carrera("Kinesiologia",date(2023,10,25)),
    Carrera("Tec. Univ. en Programación",date(2023,8,11))
]

titulos = [
    Titulo("Ingeniero en Sistemas","Universidad Tecnologica Nacional"),
    Titulo("Medicina","Facultad de Ciencias Medicas"),
]

aspirantes[0].add_titulo(titulos[0])
aspirantes[1].add_titulo(titulos[1])

carreras[0].add_titulo(titulos[1]) 
carreras[1].add_titulo(titulos[0])

inscripto = Inscripcion(aspirantes[0], carreras[0])
inscripciones.append(inscripto)
print (aspirantes[0])
print (inscripto)