Proceso U4EJ5
	//Realice un algoritmo que lea en un arreglo las marcas obtenidas por 10 corredores en una carrera e imprimir cuántos tienen una
	//marca mayor, cuántos tienen una marca menor que el promedio y el promedio
	
	Definir array_corredores, i Como Entero
	Definir marca_mayor, menor_promedio, promedio_corredor Como Real
	
	Dimension array_corredores[10]
	menor_promedio = 9999999999
	
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		
		array_corredores[i] = azar(50)
		Si array_corredores[i] > marca_mayor Entonces
			marca_mayor = array_corredores[i]
		FinSi
		Si array_corredores[i] < menor_promedio Entonces
			menor_promedio = array_corredores[i]
		FinSi
		
		promedio_corredor = promedio_corredor + array_corredores[i]
		
	FinPara
	
	Escribir ("El promedio es de "), promedio_corredor/10, (", la mayor marca es "), marca_mayor, (" y el menor promedio es de "), menor_promedio
	
	
	
FinProceso
