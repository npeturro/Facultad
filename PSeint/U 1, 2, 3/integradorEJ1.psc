Proceso integradorEJ1
	//Un empleado de un comercio debe registrar las ventas del día. Para ello, realizar un programa
	//que permita ingresar los datos de las ventas mientras se realizan.
	//Por cada venta deberá ingresar:
	//	1. El DNI del cliente (validar que la cadena posea longitud mayor a 7)
	//	2. El monto de la venta en pesos sin IVA.
	//	3. El medio de pago (mostrar la siguiente lista y validar el ingreso)
	//	1 - Efectivo
	//	2 - Débito
	//	3 - Crédito (1 pago)
	//	4. Si el medio de pago seleccionado fué Crédito se debe mostrar una lista con las tarjetas
	//		aceptadas por el comercio.
	//		5. Es cliente frecuente SI/NO (Muestra al empleado una tarjeta de "la casa" que lo
	//			identifica como cliente frecuente y el empleado ingresa la respuesta correspondiente).
	//			Luego se calculará el monto final dependiendo de los datos ingresados. Al monto de la venta se
	//		le efectúan los siguientes recargos/descuentos, a saber:
	//		Si el medio de pago es efectivo: Se realiza un 15% de descuento.
	//			Si el medio de pago es Débito: Se realiza un 10% de descuento.
	//				Si el medio de pago es Crédito: No se realiza descuento.
	//						Se adiciona el IVA al monto de la venta.
	//					Al finalizar el cálculo del monto total se muestra al empleado un resumen como sigue:
	//					DNI: 38.456.123
	//					Medio de pago: Crédito
	//					Total: $4784
	//						Llegada la hora de cierre del comercio, el empleado indica que "no desea ingresar más ventas"
	//					(finaliza el bucle). y el programa muestra un resumen como sigue:
	//					Cantidad de ventas: 10
	//					Monto total de las ventas: $10865

	Definir dni_cliente, medio_pago, contador Como Entero
	Definir monto_venta, monto_total, monto_final Como Real
	Definir cliente_frecuente, confirmacion Como Caracter
	Definir validacion Como Logico
	
	contador = 1
	monto_final = 0
	
	Escribir ("Bienvenido al sistema de ventas")
	Escribir ("Ingrese los siguientes datos")
	Repetir
		
		validacion = Falso
		monto_total = 0
		
		Repetir
			Escribir ("DNI del cliente (Sin puntos ni guiones)")
			Leer dni_cliente
			Si dni_cliente >= 1000000 y dni_cliente <= 99999999 Entonces
				validacion = Verdadero
			SiNo
				Escribir ("Dni incorrecto, intentelo nuevamente")
			FinSi
		Mientras Que validacion = Falso
				
				
		Repetir
			validacion = Falso
			Escribir ("Ingrese el monto de la venta")
			Leer monto_venta
			Si monto_venta > 0 Entonces
				validacion = Verdadero
			SiNo
				Escribir ("Valor incorrecto, intentelo nuevamente")
			FinSi
		Mientras Que validacion = Falso
		
		monto_venta = monto_venta + ((monto_venta * 21) / 100)
		
		Repetir
			validacion = Verdadero
			Escribir ("Ingrese el medio de pago")
			Escribir ("1. Efectivo")
			Escribir ("2. Debito")
			Escribir ("3. Credito (1 pago)")
			Leer medio_pago
			Segun medio_pago Hacer
				Caso 1:
					monto_total = monto_venta - ((monto_venta*15)/100)
				Caso 2:
					monto_total = monto_venta - ((monto_venta*10)/100)
				Caso 3:
					monto_total = monto_venta
				De Otro Modo:
					Escribir ("Medio de pago invalido, intentelo nuevamente")
					validacion = Falso
			FinSegun
		Mientras Que validacion = Falso
			
		monto_final = monto_final + monto_total
				
				
		Repetir
			validacion = Verdadero
			Escribir ("¿Es cliente frecuente? Ingrese Si/No")
			Leer cliente_frecuente
			Segun cliente_frecuente Hacer
				Caso "Si":
					Escribir ("Se le sumaran puntos a su tarjeta")
				Caso "No":
					Escribir ("No cuenta con beneficios disponibles")
				De Otro Modo:
					Escribir ("Respuesta invalida, intentelo nuevamente")
					validacion = Falso
			FinSegun
		Mientras Que validacion = Falso
		
	
		
		Escribir ("DNI "), dni_cliente
		Escribir ("Medio de pago "), medio_pago
		Escribir ("Total "), monto_total
		Escribir ("--------------")
		
		Escribir ("Desea Ingresar otra venta? Ingrese Si/No")
		Leer confirmacion
		Si confirmacion == "Si" Entonces
			contador = contador + 1
			validacion = Falso
		SiNo
			Si confirmacion == "No" Entonces
				Escribir ("--------------")
			FinSi
		FinSi
		
	Mientras Que validacion = Falso
	
	Escribir ("Las ventas del dia fueron "), contador
	Escribir ("Total de ventas "), monto_final
	
	
FinProceso
