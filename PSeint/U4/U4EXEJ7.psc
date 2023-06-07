Proceso U4EXEJ7
	// Escriba un algoritmo donde se le pida al usuario que ingrese una matriz 
	//cuadrada de dimensión 2 y calcular el determinante de la matriz
	
	Definir matriz_determinante, determinante, i, j, valor1, valor2, valor3, valor4 Como Real
	Dimension matriz_determinante[2,2]
	
	Para i<-0 Hasta 1 Con Paso 1 Hacer
		Para j<-0 Hasta 1 Con Paso 1 Hacer
			Escribir ("Ingrese los elementos la matriz cuadrada 2x2")
			Leer matriz_determinante[i,j]
		Fin Para
	Fin Para
	
	determinante = 1 / (matriz_determinante[0,0]*matriz_determinante[1,1]) - (matriz_determinante[0,1]*matriz_determinante[1,0])
	
	Escribir determinante
	
	
	
	valor1 = matriz_determinante[0 ,0]
	valor2 = matriz_determinante[0 ,1]
	valor3 = matriz_determinante[1 ,0]
	valor4 = matriz_determinante[1 ,1]
	
	
	matriz_determinante[0,0] = determinante * valor4
	matriz_determinante[0,1] = determinante * (-1 * valor3)
	matriz_determinante[1,0] = determinante * (-1 * valor2)
	matriz_determinante[1,1] = determinante * valor1
	
	Para i<-0 Hasta 1 Con Paso 1 Hacer
		Para j<-0 Hasta 1 Con Paso 1 Hacer
			Escribir matriz_determinante[i,j]
		Fin Para
	Fin Para
	
	
	
	
	
FinProceso
