Proceso U4subPro5
	// Realizar un programa que le pida al usuario que ingrese una lista de 10 alumnos y los
	//resultados del examen final. Luego el programa llamará a una función que calcula el promedio
	//de notas, a otra función que calcula la mayor nota, y otra que calcula la menor nota. Luego el
	//sistema informará estos 3 valores al usuario.
	
	Definir alumnos_resultados, dim, promedio, nota_mayor, nota_menor Como Entero
	Definir i Como Entero
	Dimension alumnos_resultados[10]
	dim = 10
	
	Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
		
		Escribir ("Ingrese la nota del alumno "), i+1
		Leer alumnos_resultados[i]
		
	FinPara
	
	ordenamientoArray(alumnos_resultados, dim)
	promedio = calculo_promedio(alumnos_resultados, dim)
	nota_mayor = mayor_nota(alumnos_resultados)
	nota_menor = menor_nota(alumnos_resultados, dim)
	
	Escribir ("El promedio de notas es de: "), promedio
	Escribir ("La mayor nota es: "), nota_mayor
	Escribir ("La menor nota es: "), nota_menor
	
FinProceso

SubProceso ordenamientoArray (a,b)
	Definir i, j, mayor, auxiliar Como Entero
	Para i = 0 Hasta b-1 Con Paso 1 Hacer
		mayor = a[i]
		Para j = i+1 Hasta b-1 Con Paso 1 Hacer
			Si a[j] > mayor Entonces
				auxiliar = mayor
				mayor = a[j]
				a[j] = auxiliar
			FinSi
		a[i] = mayor
		FinPara
	FinPara
FinSubProceso

Funcion calculoPromedio = calculo_promedio(a,b)
	Definir i, sumador, calculoPromedio Como Entero
	Para i = 0 Hasta b-1 Con Paso 1 Hacer
		sumador = sumador + a[i]
	FinPara
	calculoPromedio = trunc(sumador / b)
FinFuncion

Funcion mayorNotaOrdenado = mayor_nota (a)
	Definir mayorNota Como Entero
	mayorNota = a[0]
	
FinFuncion

Funcion menorNota = menor_nota (a, b)
	Definir menorNota Como Entero
	menorNota = a[b-1]
FinFuncion













	