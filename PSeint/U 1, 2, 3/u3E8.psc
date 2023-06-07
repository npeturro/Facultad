Proceso u3E8
	// Ingresar dos �ngulos de un tri�ngulo e informar si es un tri�ngulo rect�ngulo,
	//acut�ngulo u obtus�ngulo. Se debe validar adem�s que los �ngulos ingresados sean
	//n�meros positivos menores a 180 y a su vez se debe validar que la suma de los dos
	//�ngulos ingresados sea menor a 180.
	//Ejemplo1: A1=180 ? Error el �ngulo debe ser un n�mero positivo menor a 180�.
	//Ejemplo2: A1=91, A2=89 ? Error la suma de dos �ngulos no puede ser mayor o igual a
	//180�
	Definir angulo_1, angulo_2, total Como Entero
	Definir validacion Como Logico
	Escribir "Ingrese el valor de los angulos"
	Repetir
		Leer angulo_1, angulo_2
		Si (angulo_1 >= 0 y angulo_1 <= 180) y (angulo_2 >= 0 y angulo_2 <= 180) Entonces
			total = angulo_1 + angulo_2
			Si total < 180 Entonces
				validacion = Verdadero
				Si total > 90 Entonces
					Escribir "El tri�ngulo es obtus�ngulo"
				Sino
					Si total == 90 Entonces
						Escribir "El tri�ngulo es rect�ngulo"
					SiNo
						Escribir "El tri�ngulo es acut�ngulo"
					FinSi
				FinSi
			SiNo
				validacion = Falso
				Escribir "La suma de los �ngulos no puede ser mayor o igual que 180�, intentelo nuevamente"
			FinSi
		SiNo
			validacion = Falso
			Escribir "Los valores ingresados son incorrectos, intentelo nuevamente"
		FinSi
	Mientras Que validacion = Falso
	
	
	
FinProceso
