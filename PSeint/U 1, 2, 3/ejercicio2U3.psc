Proceso ejercicio5U3
	//Ingresar el dia, mes y año de nacimiento de una persona e informar la edad de la persona
	Definir dia, mes, anio, dia_actual, mes_actual, anio_actual, edad Como Entero
	Mostrar "Ingrese la fecha actual en formato DD/MM/AA"
	Leer dia_actual, mes_actual, anio_actual
	Mostrar "Ingrese la fecha de nacimiento en formato DD/MM/AA"
	Leer dia, mes, anio
	edad = anio_actual - anio
	Si  mes <= mes_actual & dia <= dia_actual Entonces
		Mostrar "La edad es " edad
	SiNo 
		Mostrar "La edad es " (edad-1)
	FinSi
	
FinProceso
