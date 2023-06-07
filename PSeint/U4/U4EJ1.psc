Proceso U4EJ1
	//Escribir un algoritmo que cree un arreglo de dimensión 7, 
	//asignarle un valor numérico cualquiera a cada posición y escribirlos en
	//pantalla.
	
	Definir arreglos_ejemplo, i Como Entero
	Dimension arreglos_ejemplo[7]
	
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		
		arreglos_ejemplo[i] = azar(50)
		
	FinPara
	
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Escribir ("Los valores son "), arreglos_ejemplo[i]
	FinPara
	
	
	
FinProceso
