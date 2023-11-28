Algoritmo practicapar
//	La escuela San Jose, ubicada en la ciudad de Rosario, requiere mejorar su proceso de cálculo de promedios de calificaciones para los cursos de este año. 
//			Con este objetivo, se solicita desarrollar un sistema que permita ingresar las calificaciones individuales de un grupo de estudiantes y calcular el promedio general.
//		El sistema contará con un menú que ofrecerá dos opciones: "Ingresar notas" y "Calcular promedio". 
//			En la primera opción, se solicitará al usuario la cantidad de estudiantes y se permitirá ingresar las calificaciones correspondientes de cada uno 
//			(las mismas no pueden ser negativas), es necesario guardar el nombre como la nota del alumnx. En la segunda opción, el sistema calculará el promedio 
//			sumando todas las calificaciones y dividiendo el resultado entre la cantidad de estudiantes. Por último, se mostrará el promedio obtenido en pantalla.
//			Para llevar a cabo este ejercicio, será necesario desarrollar un subproceso encargado de la carga de notas y una función que se encargue de realizar 
//					el cálculo y devolverlo al programa principal, el cual se encargará de mostrarlo en pantalla.
//				Adicionales: 
//					- Agregar una opción en el menú que indique cuál fue la nota más alta. Mostrar el nombre del/los alumnos que la alcanzaron.
//					- Agregar una opción en el menú que ordene las notas de mayor a menor y luego muestre la lista ordenada con los nombres de los alumnxs.
	
	
	Definir option, total, promedio Como Entero
	Definir alumnos_notas Como Caracter
	Definir mayor_nota Como Real
	Definir validacion Como Logico
	validacion = Falso
	
	
	Repetir
		
		Escribir "MENU"
		Escribir "1. Ingresar notas"
		Escribir "2. Calcular Promedio"
		Escribir "3. Mostrar nota mayor"
		Escribir "4. Mostrar notas ordenadas"
		Escribir "5. Salir"
		Leer  option	
		Segun option Hacer
			1: 
				validacion = Verdadero
				Escribir ("Ingrese el total de alumnos")
				Leer total
				Dimension alumnos_notas[total,2]				
				ingresarNotas(alumnos_notas, total)
			2:
				Si validacion == Falso Entonces
					Escribir ("No hay alumnos ingresados para calcular el promedio")
				SiNo
					promedio = calcularPromedio(alumnos_notas, total)
					Escribir ("El total del promedio es "), promedio
					
				FinSi
			3:
				Si validacion == Falso Entonces
					Escribir ("No hay alumnos ingresados para calcular el promedio")
				SiNo
					mayor_nota = notaMayor(alumnos_notas, total)
					Escribir ("La mayor nota es "), mayor_nota 
				FinSi
				
			4:
				Si validacion == Falso Entonces
					Escribir ("No hay alumnos ingresados para calcular el promedio")
				SiNo
					ordenarNotas(alumnos_notas, total)
				FinSi
			5:
				Escribir "Saliendo del sistema"
			
		FinSegun
		
	Mientras Que option <> 5
	
	
FinAlgoritmo

SubProceso ingresarNotas(alumnos, total)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta total - 1 Con Paso 1 Hacer
		
		Si i == total - 1 Entonces
			Escribir ("Ingrese el nombre del ultimo alumno")
			Leer alumnos[i,0]
			Escribir ("Ingrese la nota del alumno "), alumnos[i,0]
			Repetir 
				Leer alumnos[i,1]
				Si ConvertirANumero(alumnos[i,1]) <= 0 o ConvertirANumero(alumnos[i,1]) > 10 Entonces
					Escribir ("Nota inválida, ingresela nuevamente")
				FinSi
			Mientras Que ConvertirANumero(alumnos[i,1]) <= 0 o ConvertirANumero(alumnos[i,1]) > 10
		SiNo
			Escribir ("Ingrese el nombre del alumno")
			Leer alumnos[i,0]
			Escribir ("Ingrese la nota del alumno "), alumnos[i,0]
			
			Repetir 
				Leer alumnos[i,1]
				Si ConvertirANumero(alumnos[i,1]) <= 0 o ConvertirANumero(alumnos[i,1]) > 10 Entonces
					Escribir ("Nota inválida, ingresela nuevamente")
				FinSi
			Mientras Que ConvertirANumero(alumnos[i,1]) <= 0 o ConvertirANumero(alumnos[i,1]) > 10
			
		FinSi
		
	FinPara
	
FinSubProceso

Funcion promedio = calcularPromedio(alumnos, total)
	
	Definir promedio, i, suma_notas Como Entero
	suma_notas = 0
	Para i = 0 Hasta total - 1 Con Paso 1 Hacer
		
		suma_notas = suma_notas + ConvertirANumero(alumnos[i,1])
		
	FinPara
	
	promedio = trunc(suma_notas/total)
	
FinFuncion

Funcion mayor_nota = notaMayor(alumnos, total)
	
	Definir mayor_nota Como Real
	Definir i, j, mayor, aux Como Entero
	Definir nombre, aux_nombre Como Caracter
	Para i = 0 Hasta total - 1 Con Paso 1 Hacer
		mayor = i
		Para j = i+1 Hasta total - 1 Con Paso 1 Hacer
			Si ConvertirANumero(alumnos[j,1]) > ConvertirANumero(alumnos[mayor,1]) Entonces
				mayor = j
			FinSi			
		FinPara
		aux = ConvertirANumero(alumnos[i,1])
		alumnos[i,1] = alumnos[mayor,1]
		alumnos[mayor,1] = ConvertirATexto(aux)
		aux_nombre = alumnos[i,0]
		alumnos[i,0] = alumnos[mayor,0]
		alumnos[mayor,0] = aux_nombre
	FinPara
	mayor_nota = ConvertirANumero(alumnos[0,1])
	
FinSubProceso

SubProceso ordenarNotas(alumnos, total)
	
	Definir i, j, mayor, aux Como Entero
	Definir nombre, aux_nombre Como Caracter
	Para i = 0 Hasta total - 1 Con Paso 1 Hacer
		mayor = i
		Para j = i+1 Hasta total - 1 Con Paso 1 Hacer
			Si ConvertirANumero(alumnos[j,1]) > ConvertirANumero(alumnos[mayor,1]) Entonces
				mayor = j
			FinSi			
		FinPara
		aux = ConvertirANumero(alumnos[i,1])
		alumnos[i,1] = alumnos[mayor,1]
		alumnos[mayor,1] = ConvertirATexto(aux)
		aux_nombre = alumnos[i,0]
		alumnos[i,0] = alumnos[mayor,0]
		alumnos[mayor,0] = aux_nombre
		
	FinPara
	
	Escribir "Las notas ordenadas son"
	Para i = 0 Hasta total - 1 Con Paso 1 Hacer
		Escribir alumnos[i,0], (" ") alumnos[i,1]
		
	FinPara
	Escribir ("-----------------------------")
	
FinSubProceso

