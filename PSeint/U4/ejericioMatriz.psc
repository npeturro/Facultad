Proceso ejericioMatriz
	//Crear un sistema de una matriz 3x3 con valores aleatorios del 1 al 9 y sumar la diagonal principal
	
	Definir matriz_valores, i, j, suma Como Entero
	Dimension matriz_valores[3,3]
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			matriz_valores[i,j] = Aleatorio(1,9)
		FinPara
	FinPara
	
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Para j = 0 Hasta 2 Con Paso 1 Hacer
			Escribir Sin Saltar matriz_valores[i,j]
		FinPara
		Escribir ("")
	FinPara
	
	//Esto se puede hacer ya que la diagonal principal es el mismo indice y elemento
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		suma = suma + matriz_valores[i,i]
	FinPara
	
	Escribir ("La suma de la diagonal principal es "), suma
	
	
	
FinProceso
