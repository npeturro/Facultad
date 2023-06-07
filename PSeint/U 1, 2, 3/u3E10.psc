Proceso u3E10
	//Ingresar los resultados del parcial para los alumnos de un curso y al finalizar informar
	//el promedio, la cantidad de desaprobados y la cantidad de aprobados. Nota: Se
	//aprueba con 6 y se debe validar que la nota ingresada sea un número decimal entre 1
	//y 10.
	Definir notas, acumulador, i, contador, aprobados, desaprobados Como Real
	Definir validacion Como Logico
	Escribir "Ingrese la nota del alumno"
	acumulador = 0
	contador = 0
	aprobados = 0
	desaprobados = 0
	Repetir
		Leer notas
		validacion = Falso
		acumulador = acumulador + notas
		contador = contador + 1
		Si notas >= 6 Entonces
			aprobados = aprobados + 1
		Sino 
			desaprobados = desaprobados + 1
		FinSi
		Escribir "¿Desea continuar?"
		Escribir "1. Si"
		Escribir "2. No"
		Leer i
		Si i = 1 Entonces
			Escribir "Ingrese la nota del alumno"
		Sino 
			validacion = Verdadero
		FinSi
		
	Mientras Que validacion = Falso
	Escribir "El promedio de notas en base a las ", contador, " notas ingresadas es de " (acumulador / contador)
	Escribir "El total de aprobados es de ", aprobados, " y desaprobados ", desaprobados
FinProceso
