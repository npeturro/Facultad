Proceso U4subPro2
	// Realizar un programa que le pida al usuario que ingrese dos n�meros, luego llamar a una
	//funci�n que calcule la suma de ambos y la devuelva al programa principal. Desde el programa
	//principal mostrar el resultado de la suma.
	
	Definir num_uno, num_dos, resultado Como Entero
	Escribir Sin Saltar("Ingrese el primer n�mero: ")
	Leer num_uno
	Escribir Sin Saltar("Ingrese el segundo n�mero: ")
	Leer num_dos
	resultado = ValorResultado(num_uno, num_dos)
	Escribir ("La suma de los n�meros ingresados es de: "), resultado
	
	
	
FinProceso

Funcion resultado1 <- ValorResultado(a,b)
	
	Definir resultado1 Como Entero
	resultado1 = a + b
	
FinFuncion
	