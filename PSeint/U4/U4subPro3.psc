Proceso U4subPro3
	// Realizar un programa que le pida al usuario ingresar los 3 lados de un tri�ngulo e informar si
	//es equil�tero, is�sceles o escaleno. �sto debe hacerse llamando a un subproceso que reciba
	//los lados como par�metros de entrada y muestre por pantalla el tipo de tri�ngulo (ejemplo "El
	//tri�ngulo ingresado es un escaleno")
	
	Definir lado_uno, lado_dos, lado_tres, resultado Como Entero
	Escribir Sin Saltar("Ingrese el valor del primer lado: ")
	Leer lado_uno
	Escribir Sin Saltar("Ingrese el valor del segundo lado: ")
	Leer lado_dos
	Escribir Sin Saltar("Ingrese el valor del tercer lado: ")
	Leer lado_tres
	tipo_de_Triangulo(lado_uno, lado_dos, lado_tres)
	
	
FinProceso

SubProceso tipo_de_Triangulo(a, b, c)
	
	Si a == b Y a == c Y b == c Entonces
        Escribir "El tri�ngulo es equil�tero."
    SiNo Si a == b O a == c O b == c  Entonces
			Escribir "El tri�ngulo es is�sceles."
		Sino
			Escribir "El tri�ngulo es escaleno."
		FinSi
	FinSi
	
	
	
	
	
FinSubProceso
