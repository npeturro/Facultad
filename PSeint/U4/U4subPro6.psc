Proceso U4subPro6
	//Realizar un programa que muestre la siguiente opción de menú al usuario:
	//	"1- Mostrar lista de corredores 2 - Mostrar los tres mejores 3- Mostrar lista de completa de
	//	resutados 4 - salir."
	//	La opción 1 se llevará a cabo mediante un subproceso llamado "ListaCorredores" que
	//	mostrará al usuario los nombres y apellidos de los corredores, la opción 2 llama a otro
	//	subproceso llamado "ListaMejores" que mostrará a los corredores que salieron en las
	//	primeras 3 posiciones, la opción 3 llamará a un subproceso llamado "ListaPosiciones" que
	//	mostrará la lista de corredores con sus posiciones y la opción 4 es la salida del sistema.
	//	Nota: la lista de corredores y los resultados de la carrera se guardarán en un arreglo. El
	//	sistema tiene que mostrar de nuevo las opciones de menú una vez que la solicitud del
	//	usuario se haya completado y hasta tanto el usuario ingrese la opción de salida.
	
	Definir opcion_menu, corredores_resultados, array_listado Como Entero
	Definir  array_corredores Como Caracter
	Definir condicion Como Logico
	Dimension array_corredores[10]
	Dimension corredores_resultados[10]
	Dimension array_listado[10]
	condicion = Verdadero
	
	array_corredores[0] = "Pedro Gomez "
	array_corredores[1] = "Martin Ceres "
	array_corredores[2] = "Ernestina Diaz "
	array_corredores[3] = "Gaston Bautista "
	array_corredores[4] = "Dalma Alvarez "
	array_corredores[5] = "Patricio Fernandez "
	array_corredores[6] = "Faustina Martinez "
	array_corredores[7] = "Andrea Perez "
	array_corredores[8] = "Hilda Lopez "
	array_corredores[9] = "Leon Garcia "
	corredores_resultados[0] = 7
	corredores_resultados[1] = 6
	corredores_resultados[2] = 1
	corredores_resultados[3] = 2
	corredores_resultados[4] = 8
	corredores_resultados[5] = 3
	corredores_resultados[6] = 10
	corredores_resultados[7] = 9
	corredores_resultados[8] = 4 
	corredores_resultados[9] = 5
	guardarListado(corredores_resultados, array_listado)
	
	Escribir ("Bienvenido, Seleccione una opcion!")
	Mientras condicion = Verdadero Hacer
		
		Escribir ("1 - Mostrar lista de corredores")
		Escribir ("2 - Mostrar los tres mejores")
		Escribir ("3 - Mostrar lista completa de resultados")
		Escribir ("4 - Salir")
		Leer opcion_menu
		Segun opcion_menu Hacer
			1:
				lista_corredores(array_corredores)
			2:
				mejores_corredores(array_corredores, corredores_resultados)
			3:
				lista_completaResult(array_corredores, array_listado)
			4:
				condicion = Falso
			De Otro Modo:
				Escribir ("Opcion no valida")
		Fin Segun
		
	FinMientras
	
FinProceso

SubProceso guardarListado(a,b)
	Definir i Como Entero
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		b[i] = a[i]
	FinPara
FinSubProceso

SubProceso lista_corredores (a)
	Definir i Como Entero
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Escribir a[i]
	FinPara
	Escribir "-----------"
FinSubProceso

SubProceso mejores_corredores(a, b)
	Definir i, j, mayor, mayor2, mayor3, num Como Entero
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
        mayor = b[i]
        Para j <- i+1 Hasta 9 Con Paso 1 Hacer
            Si b[j] > mayor Entonces
                num = mayor
                mayor = b[j]
                b[j] = num
            FinSi
        FinPara
        b[i] = mayor
        Escribir mayor
    FinPara
FinSubProceso

SubProceso lista_completaResult(a,b)
	Definir i Como Entero
	Escribir ("--Nombre y Resultado")
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Escribir a[i], b[i]
	FinPara
FinSubProceso























