Proceso u3A6
	// Elaborar un algoritmo que califique el puntaje obtenido en el lanzamiento de tres dados en
	// funci�n a la cantidad de seis obtenidos, de acuerdo a lo siguiente:
	// Seis en los tres dados, excelente.
	// Seis en dos dados, muy bien.
	// Seis en un dado, regular.
	// Ning�n seis, p�simo.
	Definir dado_uno, dado_dos, dado_tres Como Entero
	Escribir ("Ingrese el n�mero del primer dado")
	Leer dado_uno
	Escribir ("Ingrese el n�mero del segundo dado")
	Leer dado_dos
	Escribir ("Ingrese el n�mero de tercer dado")
	Leer dado_tres
	Si (dado_uno > 0) y (dado_uno <= 6) y (dado_dos > 0) y (dado_dos <= 6) y (dado_tres > 0) y (dado_tres <= 6) Entonces 
		Si (dado_uno == 6) y (dado_dos == 6) y (dado_tres == 6) Entonces
			Escribir ("Obtuviste una puntuaci�n excelente")
		SiNo
			Si (dado_uno == 6) y (dado_dos == 6) o (dado_uno == 6) y (dado_tres == 6) o (dado_dos == 6) y (dado_tres == 6) Entonces
				Escribir ("Obtuviste una muy buena puntuaci�n")
			SiNo
				Si (dado_uno == 6) o (dado_dos == 6) o (dado_tres == 6) Entonces
					Escribir ("Obtuviste una puntuaci�n regular")
				SiNo
					Escribir ("Obtuviste una pesima puntuaci�n")
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir ("Los n�meros ingresados son incorrectos")
	FinSi
	
	
	
FinProceso
