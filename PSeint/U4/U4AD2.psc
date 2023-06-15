Proceso U4AD2
	//Desarrollar un sistema en PSeint que permita registrar la cantidad de votos obtenidos por cada uno de los 5 candidatos en cada una de las 4 escuelas designadas para la �ltima elecci�n en la ciudad de Chivilcoy. 
	//El sistema debe permitir la carga de los votos obtenidos para cada candidato en cada escuela. 
	//Dise�ar un men� que luego de la carga de los datos permita al usuario interactuar de forma iterativa con el mismo eligiendo alguna de la siguientes opciones:
	//Determinar el candidato con la mayor cantidad de votos y mostrar su nombre junto con la cantidad de votos obtenidos.
	//La cantidad de votantes de cada escuela.
	//Generar un informe con los resultados detallados de cada candidato en cada escuela, mostrando la cantidad de votos obtenidos en cada una.
	//Para obtener el candidato ganador armar una funci�n que retorne los datos necesarios y en el proceso principal mostrar los resultados;  para mostrar la cantidad de votantes de cada escuela armar un subproceso.
	
	Definir i, j, opciones, votos_escuela Como Entero
	Definir votos, votos_acum Como Real
	Definir candidatos_votos, mayorVoto Como Caracter
	Dimension candidatos_votos[5,5]
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
		Para j = 1 Hasta 4 Con Paso 1 Hacer
			Escribir (" En la escuela n�mero "), j
			Leer votos
			candidatos_votos[i,j] = ConvertirATexto(votos)
		FinPara
	FinPara
	
	Repetir
		
		Escribir ("Seleccione la opci�n que desear realizar")
		Escribir ("1 - Candidato con mayor n�mero de votos totales")
		Escribir ("2 - Cantidad de votantes de una escuela")
		Escribir ("3 - Salir")
		Leer opciones
		Segun opciones Hacer
			1:
				mayorVoto = calcularMayor(candidatos_votos)
				Escribir ("El candidato con mayor n�mero de votos es: "), mayorVoto
			2:
				
		FinSegun
		
		
	Mientras Que opciones <> 3
	
	
FinProceso

Funcion mayorVoto <- calcularMayor(candidatos)
	
	Definir mayorVoto Como Caracter
	Definir i, j, votos, mayor, aux, suma Como Entero
	
	Dimension votos[5]
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		suma = 0
		Para j = 1 Hasta 4 Con Paso 1 Hacer
			suma = suma + ConvertirANumero(candidatos[i,j])
		FinPara
		votos[i] = suma
		
		
	FinPara
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		mayor = votos[i]
		Para j = i + 1 Hasta 4 Con Paso 1 Hacer
			Si votos[j] > mayor Entonces
				aux = votos[i]
				mayor = votos[j]
				votos[j] = aux
			FinSi
		FinPara
	FinPara
	
	
	mayorVoto = ConvertirATexto(votos[0])
	

	
FinFuncion

















