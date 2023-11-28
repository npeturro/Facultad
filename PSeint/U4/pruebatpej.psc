Algoritmo pruebatp
	
	definir i Como Entero
	Definir arreglo Como Entero
	definir dim Como Entero
	escribir "cuantos num"
	leer dim
	Dimension arreglo[dim]
	
	
	para i = 0 Hasta dim-1 Con Paso 1 Hacer
		Escribir "ingrese num"
		leer arreglo[i]
	FinPara

	OrdenSeleccion(arreglo, dim)
	
	Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
		Escribir arreglo[i]
	FinPara
	
FinAlgoritmo




SubProceso OrdenSeleccion (arreglo, dim) //se pasa un arreglo de tamaño dim
	Definir i, j, pos_menor, aux Como Entero
	Para i = 0 Hasta dim-2 Hacer
		pos_menor=i
		Para j = i+1 Hasta dim-1 Hacer
			si arreglo[j] < arreglo[pos_menor] Entonces
				pos_menor=j
			FinSi
			cant_comparaciones=cant_comparaciones+1
		FinPara
		aux=arreglo[i]
		arreglo[i]=arreglo[pos_menor]
		arreglo[pos_menor]=aux
	FinPara
	Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
		Escribir arreglo[i]
	FinPara
	
FinSubProceso

