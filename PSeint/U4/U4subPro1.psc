Proceso U4subPro1
	//Realizar un programa que llame a un subproceso que pida al usuario ingresar el nombre, el
	//apellido y la edad de una persona, luego llamar a otro subproceso que muestre por pantalla
	//los datos de la persona
	
	Definir nombre, apellido Como Caracter
	Definir edad Como Entero
	
	carga_de_datos(nombre, apellido, edad)
	mostrar_datos(nombre, apellido, edad)
	
FinProceso

SubProceso carga_de_datos(a Por Referencia, b Por Referencia, c Por Referencia)
	Escribir ("Ingrese el nombre")
	Leer a
	Escribir ("Ingrese el apellido")
	Leer b
	Escribir ("Ingrese la edad")
	Leer c
FinSubProceso

SubProceso mostrar_datos(a, b, c)
	Escribir a
	Escribir b
	Escribir c
FinSubProceso

	