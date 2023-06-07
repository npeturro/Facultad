Proceso U4subPro4
	// Realizar un programa que permita cargar los datos de un cliente, Nombre, apellido, DNI. La
	//carga del DNI debe validarse a partir de una funci�n llamada ValidarDNI, dicha funci�n
	//recibir� como par�metro de entrada el dni ingresado y devolver� una variable del tipo l�gica
	//Verdadero/Falso. Nota: El DNI debe estar formado por n�meros y tener una longitud m�xima
	//de 8 caracteres y una longitud m�nima de 6 caracteres.
	
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

