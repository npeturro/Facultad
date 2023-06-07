Proceso U4EJ6
	// Realice un algoritmo que lea N elementos y que imprima el número que se repite más veces dentro del arreglo
	Definir array_elementos, cantidad_elementos, i, x, numero_repetido Como Entero
	
	i = 0
	numero_repetido = 0
	
	Escribir ("Ingrese la cantidad de elementos")
	Leer cantidad_elementos
	Dimension array_elementos[cantidad_elementos]
	
	Para i<-0 Hasta (cantidad_elementos - 1) Con Paso 1 Hacer
		Escribir ("Ingrese un elemento")
		Leer array_elementos[i]
		
		
		
	FinPara
	
	Para x<-0 Hasta (cantidad_elementos - 1) Con Paso 1 Hacer
		Si array_elementos[i] == array_elementos[x] Entonces
			numero_repetido = array_elementos[i]
			
		FinSi
	FinPara
	
	
	
	
	
	
	
	
	Escribir ("El numero que mas se repite es "), numero_repetido
	
	
FinProceso
