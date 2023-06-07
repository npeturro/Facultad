Proceso ejAdicional_PeturroNicolas
	//La escuela San Jose, ubicada en la ciudad de Rosario, requiere mejorar su proceso de cálculo de promedios de calificaciones para los cursos de este año. 
	//Con este objetivo, se solicita desarrollar un sistema que permita ingresar las calificaciones individuales de un grupo de estudiantes y calcular el promedio general.
	//El sistema contará con un menú que ofrecerá dos opciones: "Ingresar notas" y "Calcular promedio". 
	//En la primera opción, se solicitará al usuario la cantidad de estudiantes y se permitirá ingresar las calificaciones correspondientes de cada uno 
	//(las mismas no pueden ser negativas), es necesario guardar el nombre como la nota del alumnx. En la segunda opción, el sistema calculará el promedio 
	//sumando todas las calificaciones y dividiendo el resultado entre la cantidad de estudiantes. Por último, se mostrará el promedio obtenido en pantalla.
	//Para llevar a cabo este ejercicio, será necesario desarrollar un subproceso encargado de la carga de notas y una función que se encargue de realizar 
	//el cálculo y devolverlo al programa principal, el cual se encargará de mostrarlo en pantalla.
	//Adicionales: 
	//- Agregar una opción en el menú que indique cuál fue la nota más alta. Mostrar el nombre del/los alumnos que la alcanzaron.
	//- Agregar una opción en el menú que ordene las notas de mayor a menor y luego muestre la lista ordenada con los nombres de los alumnxs.
	Definir nombre_alumnos Como Caracter
	Definir option, cant, i Como Entero
	Definir validacion, condicion Como Logico
	Definir nota_alumnos, promedio Como Real
	validacion = Falso
	condicion = Falso
	
	Repetir
	Escribir ("Bienvenido, seleccione una opción: ")
	Escribir ("1 - Ingresar notas")
	Escribir ("2 - Calcular promedios")
	Escribir ("3 - Mostrar nota más alta")
	Escribir ("4 - Ordenar notas de mayor a menor")
	Escribir ("5 - Salir")
	Leer option
	Segun option Hacer
		Caso 1:
			validacion = Verdadero
			Escribir ("¿Cuantos alumnos desea ingresar?")
			Leer cant
			Dimension nombre_alumnos[cant]
			Dimension nota_alumnos[cant]
			ingresarNotas(nombre_alumnos, nota_alumnos, cant)
		Caso 2:
			Si validacion == Falso Entonces
				Escribir ("Primero debe ingresar alumnos")
				Escribir ("-----------------------------")
			SiNo
				promedio = calcularPromedio(nombre_alumnos, nota_alumnos, cant)
				Escribir ("El promedio total de notas es de: "), promedio
				Escribir ("-----------------------------")
			FinSi
		Caso 3:
			Si validacion == Falso Entonces
				Escribir ("Primero debe ingresar alumnos")
				Escribir ("-----------------------------")
			SiNo
				mayorNota(nombre_alumnos, nota_alumnos, cant)
			FinSi
		Caso 4:
			Si validacion == Falso Entonces
				Escribir ("Primero debe ingresar alumnos")
				Escribir ("-----------------------------")
			SiNo
				ordenarNotas(nombre_alumnos, nota_alumnos, cant)
			FinSi
		Caso 5:
			condicion = Verdadero
			
	FinSegun
	Mientras Que condicion = Falso
	
FinProceso

SubProceso ingresarNotas(nombre, notas, cant)
	
	Definir i Como Entero
	Para i <- 0 Hasta cant - 1 Con Paso 1 Hacer
		Escribir ("Ingrese el nombre del alumno "), i+1
		Leer nombre[i]
		Escribir ("Ingrese la nota del alumno "), i+1
		Repetir
			Leer notas[i]
			Si notas[i] < 0 o notas[i] > 10 Entonces
				Escribir ("Valor incorrecto, intentelo nuevamente")
			FinSi
		Mientras Que notas[i] < 0 o notas[i] > 10
		
	Fin Para	

FinSubProceso

Funcion promedio <- calcularPromedio(nombre, notas, cant)
	
	Definir promedio, i Como Real
	Para i = 0 Hasta cant - 1 Con Paso 1 Hacer
		promedio = promedio + notas[i]		
	FinPara
	promedio = trunc(promedio / cant)
FinFuncion


SubProceso mayorNota(nombre, notas, cant)
	
	Definir i, j, mayor, aux_num Como Real
	Definir aux_nombre, mayor_nombre Como Caracter
	Para i <- 0 Hasta cant - 1 Con Paso 1 Hacer
        mayor = notas[i]
		mayor_nombre = nombre[i]
        Para j <- i+1 Hasta cant - 1 Con Paso 1 Hacer
            Si notas[j] > mayor Entonces
                aux_num = mayor
				aux_nombre = mayor_nombre
                mayor = notas[j]
				mayor_nombre = nombre[j]
                notas[j] = aux_num
				nombre[j] = aux_nombre
            FinSi
        FinPara
        notas[i] = mayor
		nombre[i] = mayor_nombre
    FinPara
	
	Escribir ("La mayor nota es:")
	Escribir nombre[0], (" "), notas[0]
	Escribir ("-----------------------------")
	
FinSubProceso

SubProceso ordenarNotas(nombre, notas, cant)
	
	Definir i, j, mayor, aux_num Como Real
	Definir aux_nombre, mayor_nombre Como Caracter
	Para i <- 0 Hasta cant - 1 Con Paso 1 Hacer
        mayor = notas[i]
		mayor_nombre = nombre[i]
        Para j <- i+1 Hasta cant - 1 Con Paso 1 Hacer
            Si notas[j] > mayor Entonces
                aux_num = mayor
				aux_nombre = mayor_nombre
                mayor = notas[j]
				mayor_nombre = nombre[j]
                notas[j] = aux_num
				nombre[j] = aux_nombre
            FinSi
        FinPara
        notas[i] = mayor
		nombre[i] = mayor_nombre
    FinPara
	
	Escribir ("Las notas ordenadas de mayor a menor son las siguientes: ")
	
	Para i = 0 Hasta cant - 1 Con Paso 1 Hacer
		Escribir nombre[i], (" "), notas[i]
	FinPara
	Escribir ("-----------------------------")
	
FinSubProceso





	