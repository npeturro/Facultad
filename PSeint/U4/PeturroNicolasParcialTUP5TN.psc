Algoritmo PeturroNicolasParcialTUP5TN
//	El laboratorio de análisis clínicos "Salud Total" necesita un programa en PSeint para gestionar los resultados de los análisis realizados a sus pacientes. 
//Cada análisis consta de 5 tipos de pruebas. El laboratorio desea almacenar los resultados de los análisis de 10 pacientes. 
//		
//	Se le solicita desarrollar un programa que realice lo siguiente:
//		Permita ingresar los resultados de las pruebas para cada uno de los pacientes y las almacene en un arreglo bidimensional.
//			Determine y muestre el resultado más alto obtenido en la prueba 2.
//			Genere un subproceso que calcule y muestre el promedio de los resultados de todas las pruebas para cada paciente. 
//					Calcule y muestre la suma de los resultados de CADA prueba en todos los pacientes.
//					Los resultados de las pruebas deben ser números enteros y no pueden ser negativos. 
//					Resuelve el ejercicio utilizando funciones y subprocesos para modularizar tu programa y facilitar su mantenimiento y reutilización. 
// OBLIGATORIO EL USO DE FUNCIONES Y SUBPROCESO

	Definir option, mayor_resultado_prueba2 Como Entero
	Definir pacientes_resultados Como Caracter
	Definir validacion Como Logico
	validacion = Falso
	Dimension pacientes_resultados[10,6]
	
	Repetir
		Escribir "Lab. de Análisis Clínincos Salud Total"
		Escribir "MENU - Seleccione una opción"
		Escribir "1. Ingresar resultados"
		Escribir "2. Resultado más alto de la prueba 2"
		Escribir "3. Promedio por paciente"
		Escribir "4. Mostrar resultado de cada prueba"
		Escribir "5. Salir"
		Leer option
		
		Segun option Hacer
			
			1:
				validacion = Verdadero
				ingresarPacientes(pacientes_resultados)
				
			2:
				Si validacion = Falso Entonces
					Escribir "No hay pacientes ingresador, primero debes cargarlos"
				SiNo
					mayor_resultado_prueba2 = mayorResultadoPrueba2(pacientes_resultados)
					Escribir "El mayor resultado de la prueba 2 de todos los pacientes es ", mayor_resultado_prueba2
				FinSi
			3:
				Si validacion = Falso Entonces
					Escribir "No hay pacientes ingresador, primero debes cargarlos"
				SiNo
					calcularPromedio(pacientes_resultados)
				FinSi
			4:
				Si validacion = Falso Entonces
					Escribir "No hay pacientes ingresador, primero debes cargarlos"
				SiNo
					sumaResultados(pacientes_resultados)
				FinSi
			5:
				Escribir "Saliendo del sistema..."
			
			
		FinSegun
		
		
		
	Mientras Que option <> 5
	
	
FinAlgoritmo

SubProceso ingresarPacientes(pacientes)
	
	Definir i, j Como Entero
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del paciente ", i + 1
		Leer pacientes[i,0]
		Para j = 1 Hasta 5 Con Paso 1 Hacer
			Escribir "Ingrese el resultado de la prueba ", j, " del paciente ", pacientes[i,0]
			Repetir
				
				Leer pacientes[i,j]
				Si ConvertirANumero(pacientes[i,j]) < 0 Entonces
					Escribir "El resultado no puede ser negativo, inténtelo nuevamente"
				FinSi
				
			Mientras Que ConvertirANumero(pacientes[i,j]) < 0
			
		FinPara
	FinPara
	
	
FinSubProceso

Funcion mayor_resultado_prueba2 <- mayorResultadoPrueba2(pacientes) //FALTA TERMINAR
	
	Definir mayor_resultado_prueba2, mayor, aux, i, j Como Entero
	mayor = 0
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		
		Si ConvertirANumero(pacientes[i,2]) > mayor Entonces
			mayor = ConvertirANumero(pacientes[i,2])
		FinSi
		
	FinPara
	
	mayor_resultado_prueba2 = mayor
	
FinFuncion

SubProceso calcularPromedio(pacientes)
	
	Definir promedio, i, j, total Como Entero
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Para j = 1 Hasta 5 Con Paso 1 Hacer
			total = total + ConvertirANumero(pacientes[i,j])
		FinPara
		promedio = trunc(total / 5)
		Escribir "El promedio del paciente ", pacientes[i,0], " es ", promedio
		promedio = 0
		total = 0
	FinPara
	Escribir "-----------------------"
	
FinSubProceso

SubProceso sumaResultados(pacientes)
	
	Definir i, j, total Como Entero
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Para j = 1 Hasta 5 Con Paso 1 Hacer
			total = total + ConvertirANumero(pacientes[i,j])
		FinPara
		Escribir "El promedio del paciente ", pacientes[i,0], " es ", total
		total = 0
	FinPara
	Escribir "-----------------------"
	
	
FinSubProceso


