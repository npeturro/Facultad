Proceso u3E2
	// Ingresar los lados de un triangulo e informar si es equilátero, isósceles o escaleno
	Definir lado_1, lado_2, lado_3 Como Real
	Mostrar "Ingrese los lados del triángulo"
	Leer lado_1, lado_2, lado_3
	Si lado_1 == lado_2 & lado_1 == lado_3 & lado_2 == lado_3 entonces
		Mostrar "El triángulo es equilátero"
		SiNo
			Si lado_1 == lado_2 o lado_2 == lado_3 o lado_1 == lado_3 & (lado_1 <> lado_2 o lado_2 <> lado_3 o lado_1 <> lado_3) Entonces
				Mostrar "El triángulo es isósceles"
			SiNo
				Si lado_1 <> lado_2 & lado_2 <> lado_3 & lado_1 <> lado_3 Entonces
					Mostrar "El triángulo es escaleno"
				FinSi
			FinSi
	FinSi
FinProceso
