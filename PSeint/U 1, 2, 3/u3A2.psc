Proceso u3A2
	// Para ingresar al sistema de facturaci�n de una empresa se dispone de una credencial (usuario y
	//contrase�a) compartida por todos los empleados. Dise�e un algoritmo que solicite el usuario y
	//contrase�a hasta que se ingrese la combinaci�n correcta con un l�mite de 3 intentos. Informe
	//con mensajes aclaratorios al usuario si se ha ingresado las credenciales correctas o se alcanz�
	//el m�ximo de intentos permitidos..
	Definir usuario, contrasenia, user, password Como Caracter
	Definir i Como Entero
	Definir validacion Como Logico
	i = 0
	usuario = "userProgramacion"
	contrasenia = "Pruebas!123"
	Escribir ("Bienvenido al sistema de facturacion")
	Escribir ("Ingrese su usuario y contrase�a")
	Mientras i <= 3 Hacer
		Leer user
		Leer password
		Si (user == usuario) y (password == contrasenia) Entonces
			Escribir ("Bienvenido al sistema")
			i = 5
		SiNo
			Escribir ("Credenciales invalidas")
			i = i + 1
		FinSi
	FinMientras
	Si i == 4 Entonces
		Escribir ("Se alcanzo el limite de intentos (3)")
	FinSi
FinProceso
