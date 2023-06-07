Proceso u3A4
	//Se dispone de un conjunto desconocido de familias, cada una de las cuales tiene un número de
	//N de hijos (N>1). Escribir un algoritmo para averiguar la media (promedio) de edad de los hijos
	//de todas las familias. Preguntar luego de ingresar los datos una familia si se desea ingresar otra.
	Definir promedio Como Real
	Definir hijos_contador, hijos_familias, contador, i, hijos Como Entero
	Definir validacion Como Logico
	Definir continuar Como Caracter
	hijos_familias = 0
	contador = 0
	Escribir ("¿Con cuantos hijos cuenta?")
	Repetir
		contador = contador + 1
		validacion = Falso
		Leer hijos_contador
		Si hijos_contador >= 1 Entonces
			Para i <- 1 Hasta hijos_contador Con Paso 1 Hacer
				Escribir ("Cual es la edad?")
				Leer hijos
				hijos_familias = hijos_familias + hijos
			Fin Para
			Escribir ("Desea continuar?")
			Leer continuar
			Segun continuar Hacer
				"Si": 
					Escribir ("Ingrese la cantidad de hijos")
				"No":
					validacion = Verdadero
			FinSegun
		SiNo
			Escribir ("Debe contar con al menos 1 hijo")
			validacion = Verdadero
		FinSi
		
	Mientras Que validacion = Falso
	promedio = hijos_familias / contador
	Escribir ("El promedio de edad de hijos en familias es de ") promedio
	
	
FinProceso
