Proceso U4AD2
	//Desarrollar un sistema en PSeint que permita registrar la cantidad de votos obtenidos por cada uno de los 5 candidatos en cada una de las 4 escuelas designadas para la última elección en la ciudad de Chivilcoy. 
	//El sistema debe permitir la carga de los votos obtenidos para cada candidato en cada escuela. 
	//Diseñar un menú que luego de la carga de los datos permita al usuario interactuar de forma iterativa con el mismo eligiendo alguna de la siguientes opciones:
	//Determinar el candidato con la mayor cantidad de votos y mostrar su nombre junto con la cantidad de votos obtenidos.
	//La cantidad de votantes de cada escuela.
	//Generar un informe con los resultados detallados de cada candidato en cada escuela, mostrando la cantidad de votos obtenidos en cada una.
	//Para obtener el candidato ganador armar una función que retorne los datos necesarios y en el proceso principal mostrar los resultados;  para mostrar la cantidad de votantes de cada escuela armar un subproceso.
	
	Definir i, j, opciones Como Entero
	Definir votos, votos_acum Como Real
	Definir candidatos_votos, mayorVoto Como Caracter
	Dimension candidatos_votos[5,6]
	
	
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
		Para j = 1 Hasta 4 Con Paso 1 Hacer
			Escribir (" En la escuela número "), j
			Leer votos
			candidatos_votos[i,j] = ConvertirATexto(votos)
		FinPara
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
				
				calcularVotantes(candidatos_votos)
				
		FinSegun
		
		
	Mientras Que opciones <> 3
	
	
FinProceso

Funcion mayorVoto <- calcularMayor(candidatos)
	
	Definir mayorVoto Como Caracter
	Definir i, j, mayor, aux, suma Como Entero
	
	mayor = 0
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		suma = 0
		Para j = 1 Hasta 4 Con Paso 1 Hacer
			suma = suma + ConvertirANumero(candidatos[i,j])
		FinPara
		
		candidatos[i,5] = ConvertirATexto(suma)
		Si suma > mayor Entonces
			mayor = suma
			aux = i
		FinSi
		Escribir suma
	FinPara
	
	mayorVoto = ConvertirATexto(mayor)
	
FinFuncion

SubProceso calcularVotantes(candidatos)
	
	Definir option, i, j, total Como Entero
	
	Escribir ("Ingrese el número de la escuela que desea saber la cantidad de votos")
	Leer option
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		
		total = total + ConvertirANumero(candidatos[i, option])
		
		
	FinPara
	
	Escribir ("El total para la escuela número "), option, (" es "), total
	
	
	
	
	
FinSubProceso















