from pais import *
from provincia import *
from localidad import *

paises = [
    Pais("Argentina", "01"),
    Pais("Chile", "02"),
    Pais("Uruguay", "03")
]

provincias = [
    Provincia("Tucuman", "01"),
    Provincia("Bs As", "02"),
    Provincia("Malleco", "03"),
    Provincia("Cautin", "04"),
    Provincia("Salto", "05"),
    Provincia("Rivera", "06"),
]

localidades = [
    Localidad("Concepcion", "01", "2000"),
    Localidad("La plata", "02", "2022"),
    Localidad("Hola", "03", "2033"),
    Localidad("Bla", "04", "2044"),
    Localidad("Jaja", "05", "2055"),
    Localidad("Si", "06", "2066"),
]

paises[0].add_provincia(provincias[0])
provincias[0].add_localidad(localidades[0])

paises[0].add_provincia(provincias[1])
provincias[1].add_localidad(localidades[1])

paises[1].add_provincia(provincias[2])
provincias[2].add_localidad(localidades[2])

paises[1].add_provincia(provincias[3])
provincias[3].add_localidad(localidades[3])

paises[2].add_provincia(provincias[4])
provincias[4].add_localidad(localidades[4])

#--LISTA CLIENTES--#
listaClientes = []