Proceso u3A7
	//En una tienda de venta de productos de limpieza aplica descuentos dependiendo del monto
	//total de la venta:
	//Si el monto es menor que 500 no hay descuento.
	//Si el monto está comprendido entre 500 y 1000 inclusive, el descuento es de 5%.
	//Si el monto está comprendido entre 1000 y 7000 inclusive, el descuento es del 11%.
	//Si el monto es mayor de 7000 el descuento es del 18%.
	Definir monto_venta, total_monto Como Real
	Definir validacion Como Logico
	total_monto = 0
	Repetir
		Escribir ("Ingrese el monto de la venta")
		Leer monto_venta	
		Si monto_venta >= 500 y monto_venta <= 1000 Entonces
			total_monto = (monto_venta - (monto_venta * 0.05))
			validacion = Verdadero
		SiNo
			Si monto_venta > 1000 y monto_venta <= 7000 Entonces
				total_monto = (monto_venta - (monto_venta * 0.11))
				validacion = Verdadero
			SiNo
				Si monto_venta > 7000 Entonces
					total_monto = (monto_venta - (monto_venta * 0.18))
					validacion = Verdadero
				SiNo
					Si monto_venta < 500 y monto_venta > 0 Entonces
						validacion = Verdadero
						total_monto = monto_venta
					SiNo
						Escribir ("Datos ingresados incorrecto, intentelo nuevamente")
						validacion = Falso
					FinSi
				FinSi
			FinSi
			
			
		FinSi
	Mientras Que validacion = Falso
	
	
	
	Escribir ("El monto total es de "), total_monto
	
	
	
	
	
	
	
	
FinProceso
