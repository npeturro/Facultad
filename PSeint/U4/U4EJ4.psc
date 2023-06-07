Proceso U4EJ4
	//Escribir un algoritmo que permita ingresar 10 valores numéricos
	//en un arreglo y que como resultado devuelva el mayor de todos
	//los valores ingresados.
	Definir arreglos_ejemplo, i, acumulador_mayor Como Entero
	acumulador_mayor = 0
	Dimension arreglos_ejemplo[10]
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		
		Escribir Sin Saltar ("Ingrese un valor ")
		Leer arreglos_ejemplo[i]
		Si arreglos_ejemplo[i] > acumulador_mayor Entonces
			acumulador_mayor = arreglos_ejemplo[i]
		FinSi
		
	FinPara
	
	
	Escribir ("El mayor valor es "), acumulador_mayor
	
	
	
FinProceso
