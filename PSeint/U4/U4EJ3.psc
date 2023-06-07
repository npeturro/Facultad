Proceso U4EJ3
	//Desarrollar un algoritmo que permita ingresar 5 datos 
	//numéricos en un arreglo y que luego los sume a todos y muestre el resultado
	//en pantalla.
	Definir arreglos_ejemplo, i, suma Como Entero
	Dimension arreglos_ejemplo[5]
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		
		Escribir Sin Saltar ("Ingrese un valor")
		Leer arreglos_ejemplo[i]
		suma = suma + arreglos_ejemplo[i]
		
	FinPara
	
	
	Escribir ("La suma de todos los valores es "), suma
	
	
FinProceso
