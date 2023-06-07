Proceso U4EJ2
	//Escribir un algoritmo que permita al usuario ingresar 5 números y luego imprimirlos en pantalla.
	
	Definir arreglos_ejemplo, i Como Entero
	Dimension arreglos_ejemplo[7]
	
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		
		Escribir Sin Saltar ("Ingrese un valor")
		Leer arreglos_ejemplo[i]
		
	FinPara
	
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Escribir ("Los valores ingresados fueron "), arreglos_ejemplo[i]
	FinPara
	
FinProceso
