Proceso u3A3
	//Se tiene una planilla con 30 alumnos de una comisión y sus respectivas notas de los 4 parciales.
	//Realizar un algoritmo que permita ingresar las 4 notas y nombre para cada alumno. Al finalizar
	//se debe informar, el mayor promedio de la comisión y el nombre del alumno.
	Definir nombre_alumno, promedio_alumno Como Caracter
	Definir nota, contador, contador_notas, promedio, promedio_mejor Como Real
	contador = 1
	promedio = 0
	promedio_mejor = 0
	//para probar esto poner otro valor en el mientras
	Mientras contador <= 30 Hacer
		contador = contador + 1
		contador_notas = 1
		Escribir ("Ingrese el nombre del alumno")
		Leer nombre_alumno
		Mientras contador_notas <= 4 Hacer
			contador_notas = contador_notas + 1
			Escribir ("Ingrese la nota")
			Leer nota
			promedio = promedio + nota
		FinMientras
		promedio = promedio / 4
		Si promedio > promedio_mejor Entonces
			promedio_mejor = promedio
			promedio_alumno = nombre_alumno
		FinSi
		
	FinMientras
	Escribir ("El mejor promedio es de "), promedio_alumno, (" con "), promedio_mejor
	
	
	
FinProceso
