Proceso U4AD2
	//Desarrollar un sistema en PSeint que permita registrar la cantidad de votos obtenidos por cada uno de los 5 candidatos en cada una de las 4 escuelas designadas para la última elección en la ciudad de Chivilcoy. 
	//El sistema debe permitir la carga de los votos obtenidos para cada candidato en cada escuela. 
	//Diseñar un menú que luego de la carga de los datos permita al usuario interactuar de forma iterativa con el mismo eligiendo alguna de la siguientes opciones:
	//Determinar el candidato con la mayor cantidad de votos y mostrar su nombre junto con la cantidad de votos obtenidos.
	//La cantidad de votantes de cada escuela.
	//Generar un informe con los resultados detallados de cada candidato en cada escuela, mostrando la cantidad de votos obtenidos en cada una.
	//Para obtener el candidato ganador armar una función que retorne los datos necesarios y en el proceso principal mostrar los resultados;  para mostrar la cantidad de votantes de cada escuela armar un subproceso.
	
	Definir i, j, opciones, votos_escuela Como Entero
	Definir votos, votos_acum, mayorVoto Como Real
	Definir candidatos_votos Como Caracter
	Dimension candidatos_votos[5,2]
	Dimension votos_escuela[4]
	
	Escribir ("Bienvenido")
	Escribir ("Ingrese el nombre de los 5 candidatos")
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Leer candidatos_votos[i,0]
		Si i < 4 Entonces
			Escribir ("Ingrese el siguiente nombre")
		FinSi
	FinPara
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Escribir ("Ingrese el total de votos obtenidos del candidato "), candidatos_votos[i,0]
		Para j = 0 Hasta 3 Con Paso 1 Hacer
			Escribir (" En la escuela número "), j + 1
			Leer votos
			votos_acum = votos_acum + votos
			candidatos_votos[i,1] = ConvertirATexto(votos_acum)
		FinPara
		votos_acum = 0
	FinPara
	
	Repetir
		
		Escribir ("Seleccione la opción que desear realizar")
		Escribir ("1 - Candidato con mayor número de votos totales")
		Escribir ("2 - Cantidad de votantes de una escuela")
		Escribir ("3 - Salir")
		Leer opciones
		Segun opciones Hacer
			1:
				mayorVoto = calcularMayor(candidatos_votos)
				Escribir ("El candidato con mayor número de votos es: "), mayorVoto
			2:
				
		FinSegun
		
		
	Mientras Que opciones <> 3
	
	
FinProceso

Funcion mayorVoto <- calcularMayor(candidatos)
	
	Definir mayorVoto Como Real
	
	Definir i, j, mayor, aux Como Real
	Definir aux_nombre, mayor_nombre Como Caracter
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		mayor = ConvertirANumero(candidatos[i,1])
		Para j = i + 1 Hasta 4 Con Paso 1 Hacer
			Si candidatos[j,1] > mayor Entonces
				aux = mayor 
				mayor = candidatos[j,1]
				candidatos[j,1] = aux			
			FinSi
			
		FinPara
		candidatos[i,1] = mayor
		
    FinPara
	
	mayorVoto = candidatos[0,1]
	
FinFuncion

















