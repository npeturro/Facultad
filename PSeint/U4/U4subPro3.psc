Proceso U4subPro3
	// Realizar un programa que le pida al usuario ingresar los 3 lados de un triángulo e informar si
	//es equilátero, isósceles o escaleno. Ésto debe hacerse llamando a un subproceso que reciba
	//los lados como parámetros de entrada y muestre por pantalla el tipo de triángulo (ejemplo "El
	//triángulo ingresado es un escaleno")
	
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
        Escribir "El triángulo es equilátero."
    SiNo Si a == b O a == c O b == c  Entonces
			Escribir "El triángulo es isósceles."
		Sino
			Escribir "El triángulo es escaleno."
		FinSi
	FinSi
	
	
	
	
	
FinSubProceso
