Proceso u3E2
	// Ingresar los lados de un triangulo e informar si es equil�tero, is�sceles o escaleno
	Definir lado_1, lado_2, lado_3 Como Real
	Mostrar "Ingrese los lados del tri�ngulo"
	Leer lado_1, lado_2, lado_3
	Si lado_1 == lado_2 & lado_1 == lado_3 & lado_2 == lado_3 entonces
		Mostrar "El tri�ngulo es equil�tero"
		SiNo
			Si lado_1 == lado_2 o lado_2 == lado_3 o lado_1 == lado_3 & (lado_1 <> lado_2 o lado_2 <> lado_3 o lado_1 <> lado_3) Entonces
				Mostrar "El tri�ngulo es is�sceles"
			SiNo
				Si lado_1 <> lado_2 & lado_2 <> lado_3 & lado_1 <> lado_3 Entonces
					Mostrar "El tri�ngulo es escaleno"
				FinSi
			FinSi
	FinSi
FinProceso
