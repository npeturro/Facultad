Proceso u3E9
	//Ingresar los resultados del parcial para los alumnos de un curso y al finalizar informar
	//el promedio de notas. Se desconoce la cantidad de notas a ingresar. El sistema le
	//preguntará al usuario si quiere ingresar otro parcial o si ya terminó
	Definir notas, acumulador, i, contador Como Real
	Definir validacion Como Logico
	Escribir "Ingrese la nota del alumno"
	acumulador = 0
	contador = 0
	Repetir
		Leer notas
		validacion = Falso
		acumulador = acumulador + notas
		contador = contador + 1
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
	Escribir "El promedio de notas en base a las ", contador, " notas ingresadas es de " acumulador / contador
FinProceso
