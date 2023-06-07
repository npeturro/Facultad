Proceso ejercicio5U3
	//Supongamos que estas escribiendo un programa para calcular el costo de envio de un producto en una tienda en linea. El costo de envio depende del peso
	// del producto y la ubic del cliente. Si el peso del producto es menor o igual a 5 kg, el costo de envio es 250. Si el peso del producto es mayor a 5 el costo
	//aumenta a 500. Si el cliente vive en una ubic dentro del pais, se le cobra un costo adicional de 300. Si el cliente vive en una ubic fuera del paso el adic es 2000
	Definir peso_producto, costo Como Real
	Definir ubicacion_cliente Como Caracter
	costo = 250
	Mostrar  "Ingrese el peso del producto expresado en kg"
	Leer peso_producto
	Mostrar "¿El envio es dentro del pais?"
	Leer ubicacion_cliente
	Si ubicacion_cliente == "Si" Entonces
		Si peso_producto <= 5 Entonces
			Mostrar "El valor del envio es $", costo + 300
		SiNo 
			Mostrar "El valor del envio es $", costo + 300 + 500
		FinSi
	SiNo
		Si peso_producto <= 5 Entonces
			Mostrar "El valor del envio es $", costo + 300 + 2000
		SiNo 
			Mostrar "El valor del envio es $", costo + 300 + 500 + 2000
		FinSi
	FinSi
FinProceso

