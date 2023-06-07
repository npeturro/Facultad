Proceso evento
	//Escriba un algoritmo donde se le pida al usuario que ingrese la cantidad de personas invitadas a un evento, luego pedir que ingresé
	//los nombres de la misma y el tipo de menú. Al finalizar la carga mostrar al usuario la lista de invitados con el menú seleccionando.
	//El menú puede ser "tradicional", "vegano" y "Sin TACC"
	Definir cantidad, i, j Como Entero
	Definir invitados, nombre, menus  Como Caracter
	
	Escribir ("Ingrese la cantidad de personas invitadas")
	Leer cantidad
	Dimension invitados[cantidad, 8]
	Para i<-0 Hasta cantidad - 1 Con Paso 1 Hacer
		Escribir ("Ingrese el nombre")
		Leer invitados[i,0]
		Escribir ("Ingrese el menu")
		Leer invitados[i, i+1]
	Fin Para
	
	Para i<-0 Hasta cantidad - 1 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir invitados[i,j]
		Fin Para
	Fin Para
	
	
FinProceso



