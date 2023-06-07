Proceso U4subPro4
	// Realizar un programa que permita cargar los datos de un cliente, Nombre, apellido, DNI. La
	//carga del DNI debe validarse a partir de una función llamada ValidarDNI, dicha función
	//recibirá como parámetro de entrada el dni ingresado y devolverá una variable del tipo lógica
	//Verdadero/Falso. Nota: El DNI debe estar formado por números y tener una longitud máxima
	//de 8 caracteres y una longitud mínima de 6 caracteres.
	
	Definir nombre_cliente, apellido_cliente Como Caracter
	Definir dni_cliente Como Entero
	Definir resultado Como Logico

	Escribir Sin Saltar("Ingrese el nombre del cliente: ")
	Leer nombre_cliente
	Escribir Sin Saltar("Ingrese el apellido del cliente: ")
	Leer apellido_cliente
	Escribir Sin Saltar("Ingrese el DNI del cliente (sin puntos ni guiones): ")
	Leer dni_cliente
	resultado = ValidarDNI(dni_cliente)
	Si resultado == Verdadero Entonces
		Escribir ("El dni ingresado es correcto")
	SiNo
		Escribir ("El dni ingresado es incorrecto")
	FinSi
	
	
FinProceso

Funcion dni_validacion <- ValidarDNI(a)
	
	Definir dni_validacion Como Logico
	
	Si Longitud(ConvertirATexto(a)) >= 6 y Longitud(ConvertirATexto(a)) <= 8 Entonces
		dni_validacion = Verdadero
	SiNo
		dni_validacion = Falso
	FinSi
	
FinFuncion

