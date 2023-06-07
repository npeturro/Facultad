Proceso u3A2
	// Para ingresar al sistema de facturación de una empresa se dispone de una credencial (usuario y
	//contraseña) compartida por todos los empleados. Diseñe un algoritmo que solicite el usuario y
	//contraseña hasta que se ingrese la combinación correcta con un límite de 3 intentos. Informe
	//con mensajes aclaratorios al usuario si se ha ingresado las credenciales correctas o se alcanzó
	//el máximo de intentos permitidos..
	Definir usuario, contrasenia, user, password Como Caracter
	Definir i Como Entero
	Definir validacion Como Logico
	i = 0
	usuario = "userProgramacion"
	contrasenia = "Pruebas!123"
	Escribir ("Bienvenido al sistema de facturacion")
	Escribir ("Ingrese su usuario y contraseña")
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
