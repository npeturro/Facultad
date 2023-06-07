Proceso u3A6
	// Elaborar un algoritmo que califique el puntaje obtenido en el lanzamiento de tres dados en
	// función a la cantidad de seis obtenidos, de acuerdo a lo siguiente:
	// Seis en los tres dados, excelente.
	// Seis en dos dados, muy bien.
	// Seis en un dado, regular.
	// Ningún seis, pésimo.
	Definir dado_uno, dado_dos, dado_tres Como Entero
	Escribir ("Ingrese el número del primer dado")
	Leer dado_uno
	Escribir ("Ingrese el número del segundo dado")
	Leer dado_dos
	Escribir ("Ingrese el número de tercer dado")
	Leer dado_tres
	Si (dado_uno > 0) y (dado_uno <= 6) y (dado_dos > 0) y (dado_dos <= 6) y (dado_tres > 0) y (dado_tres <= 6) Entonces 
		Si (dado_uno == 6) y (dado_dos == 6) y (dado_tres == 6) Entonces
			Escribir ("Obtuviste una puntuación excelente")
		SiNo
			Si (dado_uno == 6) y (dado_dos == 6) o (dado_uno == 6) y (dado_tres == 6) o (dado_dos == 6) y (dado_tres == 6) Entonces
				Escribir ("Obtuviste una muy buena puntuación")
			SiNo
				Si (dado_uno == 6) o (dado_dos == 6) o (dado_tres == 6) Entonces
					Escribir ("Obtuviste una puntuación regular")
				SiNo
					Escribir ("Obtuviste una pesima puntuación")
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir ("Los números ingresados son incorrectos")
	FinSi
	
	
	
FinProceso
