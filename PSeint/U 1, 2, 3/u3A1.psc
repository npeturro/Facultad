Proceso u3A1
	//Un alumno desea recursar una materia del cuatrimestre anterior, para ello debe enviar una
	//solicitud. Se desea validar que los datos requeridos para enviar la solicitud estén cargados
	//correctamente.
	//Datos requeridos:
		//? Nombre y Apellido
		//? Legajo (Numérico - longitud 5)
		//? Materia a recursar (Mostrar una lista y validar que ingrese una de las opciones
		//mostradas).
		//? Comisión cursado cuatrimestre anterior (Mostrar una lista y validar que ingrese una de
		//las opciones mostradas).
	   //Turno de preferencia para recursar (Opciones posibles: [TM/ TT/TN] ).
	Definir nombre_alumno, continuar, legajo_alumno  Como Caracter
	Definir materia, comision, turno Como Entero
	Definir validacion Como Logico
	Repetir
		validacion = Verdadero
		Escribir ("Ingrese los siguientes datos")
		Escribir ("Nombre y Apellido")
		Leer nombre_alumno
		Escribir ("Numero de legajo")
		Leer legajo_alumno
		Si Longitud(legajo_alumno) == 5 Entonces
			Escribir ("Materia a recursar")
			Escribir ("1. Quimica")
			Escribir ("2. Ingles")
			Escribir ("3. Programacion")
			Escribir ("4. Matematicas")
			Leer materia
			Si materia >= 1 y materia <= 4 Entonces
				Escribir ("Comisión anterior")
				Escribir ("1. 2/1era")
				Escribir ("2. 2/2da")
				Escribir ("3. 2/3era")
				Escribir ("4. 2/4ta")
				Leer comision
				Si comision >= 1 y comision <= 4 Entonces
					Escribir ("Turno a cursar a solicitar")
					Escribir ("1. TM")
					Escribir ("2. TT")
					Escribir ("3. TN")
					Leer turno
					Si turno >= 1 y turno <= 3 Entonces
						Escribir ("Solicitud aceptada")
					SiNo
						Escribir ("Datos invalidos intentelo nuevamente")
					FinSi
				SiNo
					Escribir ("Datos invalidos intentelo nuevamente")	
				FinSi
			SiNo
				Escribir ("Datos invalidos intentelo nuevamente")	
			FinSi
		SiNo
			Escribir ("Datos invalidos. El numero de legajo debe contar con 5 números.")	
		FinSi
		Escribir ("¿Desea intentarlo nuevamente?")
		Leer continuar
		Segun continuar Hacer
			"Si": validacion = Falso
			"No": validacion = Verdadero
			De Otro Modo:
				Escribir ("Valores incorrectos. Se cerrara el sistema")
		FinSegun
	Mientras Que validacion = Falso
	
FinProceso
