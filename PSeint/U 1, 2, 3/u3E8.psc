Proceso u3E8
	// Ingresar dos ángulos de un triángulo e informar si es un triángulo rectángulo,
	//acutángulo u obtusángulo. Se debe validar además que los ángulos ingresados sean
	//números positivos menores a 180 y a su vez se debe validar que la suma de los dos
	//ángulos ingresados sea menor a 180.
	//Ejemplo1: A1=180 ? Error el ángulo debe ser un número positivo menor a 180°.
	//Ejemplo2: A1=91, A2=89 ? Error la suma de dos ángulos no puede ser mayor o igual a
	//180°
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
					Escribir "El triángulo es obtusángulo"
				Sino
					Si total == 90 Entonces
						Escribir "El triángulo es rectángulo"
					SiNo
						Escribir "El triángulo es acutángulo"
					FinSi
				FinSi
			SiNo
				validacion = Falso
				Escribir "La suma de los ángulos no puede ser mayor o igual que 180º, intentelo nuevamente"
			FinSi
		SiNo
			validacion = Falso
			Escribir "Los valores ingresados son incorrectos, intentelo nuevamente"
		FinSi
	Mientras Que validacion = Falso
	
	
	
FinProceso
