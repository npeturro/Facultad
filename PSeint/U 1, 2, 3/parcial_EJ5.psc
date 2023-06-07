Proceso parcial_EJ5
	// El jefe de cardiologia del Hospital Italiano de Rosario tiene como política cobrar la consulta con base en el número de cita, de la siguiente forma:
	//Las tres primeras citas a $ 700,00 c/u.
	//Las siguientes dos citas a $ 300,00 c/u.
	//Las tres siguientes citas a $ 200,00 c/u.
	//Las restantes a $ 100,00 c/u, mientras dure el tratamiento.
	//Realice un proceso para determinar:
			//Cuánto pagará el paciente por la cita actual.
			//El monto de lo que ha pagado el paciente por el tratamiento hasta la cita actual.
			//El proceso se debe repetir para la cantidad de pacientes que el usuario lo requiera.
			//Validaciones.
			//Un tratamiento completo no puede superar las 20 citas.
			//La opción para continuar debe validarse con S-SI o N-NO
			//Para cada una de las validaciones, informar al usuario la situación y solicitar un valor válido.
	Definir cantidad_citas, contador, total_abonar, cantidad_usuarios Como Entero
	Definir continuar Como Caracter
	Definir validacion, validacion_incorrecto Como Logico
	total_abonar = 0
	
	
	Repetir
		Repetir
		Escribir ("Ingrese el número de cita actual")
		Leer cantidad_citas
		Si cantidad_citas >= 1 y cantidad_citas <= 3 Entonces
			total_abonar = total_abonar + 700
			Escribir ("Cita ingresada valida")
			validacion_incorrecto = Verdadero
		SiNo
			Si cantidad_citas > 3 y cantidad_citas <= 5 Entonces
				total_abonar = total_abonar + 300
				Escribir ("Cita ingresada valida")
				validacion_incorrecto = Verdadero
			SiNo
				Si cantidad_citas > 5 y cantidad_citas <= 8 Entonces
					total_abonar = total_abonar + 200
					Escribir ("Cita ingresada valida")
					validacion_incorrecto = Verdadero
				SiNo 
					Si cantidad_citas > 8 y cantidad_citas <= 20 Entonces
						total_abonar = total_abonar + 100
						Escribir ("Cita ingresada valida")
						validacion_incorrecto = Verdadero
					SiNo
						Si cantidad_citas = 0 Entonces
							Escribir ("El numero de citas debe ser mayor a 1")
							Escribir ("Intentelo nuevamente")
							validacion_incorrecto = Falso
						SiNo
							Escribir ("No puede superar las 20 citas por paciente")
							Escribir ("Intentelo nuevamente")
							validacion_incorrecto = Falso
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Mientras Que validacion_incorrecto = Falso
		Escribir ("El monto a abonar es de $"), total_abonar, (" correspondientes a "), cantidad_citas, (" citas")
		Escribir ("Desea ingresar un nuevo paciente?")
		Escribir ("Presione S para SI y N para NO")
		Leer continuar
		Segun continuar Hacer
			"S": validacion = Verdadero
			"N": validacion = Falso
			De Otro Modo:
				Escribir ("Valor incorrecto, reintentelo")
		FinSegun
		
	Mientras Que validacion = Verdadero
	
FinProceso
