Proceso parcialEJ6
	
	Definir edad, carga_edad, opcion_continuar, carga_opcion_continuar Como Entero
	Definir costo_base, carga_costo_base, costo_total, costo_carga Como Real
	Definir cobertura, carga_cobertura, opcion_alcohol, carga_opcion_alcohol Como Caracter
	Definir opcion_lentes, carga_opcion_lentes, opcion_enfermedad, carga_opcion_enfermedad Como Caracter
	
	
	Escribir("Ingrese la cobertura deseada (A o B): ")
	Leer carga_cobertura
	Escribir("Ingrese la edad del asegurado: ")
	Leer carga_edad
	Escribir("¿Tiene por hábito beber alcohol? (S-SI N-NO): ")
	Leer carga_opcion_alcohol
	Escribir("¿Usa lentes? (S-SI N-NO): ")
	Leer carga_opcion_lentes
	Escribir("¿Padece alguna enfermedad? (S-SI N-NO): ")
	Leer carga_opcion_enfermedad  
	
	Si (carga_cobertura == "A" o carga_cobertura == "B") Entonces
		Si (carga_edad >= 20 y carga_edad <= 70) Entonces
			Si (carga_opcion_alcohol == "S" o carga_opcion_alcohol == "N") Entonces
				Si (carga_opcion_lentes == "S" o carga_opcion_lentes == "N") Entonces
					Si (carga_opcion_enfermedad == "S" o carga_opcion_enfermedad == "N") Entonces
						Si (carga_cobertura == "A") Entonces
							costo_base = 3500.00
						Sino
							costo_base = 1200.00
						FinSi
						Si (carga_edad > 40) Entonces
							costo_carga = costo_base * 0.30
						Sino
							costo_carga = costo_base * 0.15
						FinSi
						Si (carga_opcion_alcohol == "S") Entonces
							costo_carga = costo_carga + (costo_base * 0.15)
						FinSi
						Si (carga_opcion_lentes == "S") Entonces
							costo_carga = costo_carga + (costo_base * 0.07)
						FinSi
						Si (carga_opcion_enfermedad == "S") Entonces
							costo_carga = costo_carga + (costo_base * 0.04)
						FinSi
						costo_total = costo_base + costo_carga
						Escribir("El costo total de la póliza es: $", costo_total)
						Escribir()
						
						// Preguntar si desea continuar cotizando
						Escribir("¿Desea continuar cotizando? (S-SI o N-NO): ")
						Leer(carga_opcion_continuar)
						
						// Validar opción continuar

	
	
	
	
FinProceso
