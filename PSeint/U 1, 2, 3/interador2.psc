Proceso integradoEJ2
	
	// Una planta que fabrica perfiles de hierro posee un lote de N piezas y desea verificar la longitud
	//y espesor de los perfiles del lote con un programa.
	//Al iniciar el programa solicitar que se ingrese la cantidad total de piezas del lote y luego se
	//comienza a evaluar uno a uno si el perfil es apto para la venta o no.
	//	Un perfil es apto cuando:
	//		? La longitud del mismo varía entre 1,2m a 1,5m (inclusive)
	//		? El espesor del mismo varía entre 2.1 mm a 2.5mm (sin incluir)
	//		? Pasó la prueba de estrés [SI/NO] (validar ingreso)
	//			Validar que los datos numéricos ingresados esté comprendido entre 0.5 y 3.5
	//		Luego de evaluadas todas las piezas del lote se debe indicar un resumen cómo sigue:
	//		Cantidad piezas lote: 455
	//		Cantidad piezas no aptas: 85
	//		Longitud media del lote: 1.3 metros
	//		Proporción piezas defectuosas en el lote: 0.18
	//			La fábrica tiene estudiado que las piezas "anómalas" presentan una desviación mayor a 0.2 m
	//			de Longitud en relación con la "Longitud Apta". Es decir las piezas que posean una longitud
	//			menor a 1m o mayor a 1.7m se las considera "anómalas".
	//		Indicar un resumen como sigue:
	//		Piezas anómalas: 2
	//		Mayor Longitud pieza anómala: 1.8 metros
	//			De no existir piezas anómalas en el lote, no mostrar el resumen anterior
	
	
	Definir cantidad_lotes, condicion_mientras, contador_no_aptos, pieza_anomala Como Entero
	Definir longitud_perfil, espesor_perfil, longitud_promedio, mayor_anomala, contador_mientras Como Real
	Definir prueba_estres Como Caracter
	
	condicion_mientras = 1
	contador_no_aptos = 0 
	longitud_promedio = 0
	contador_mientras = 0
	pieza_anomala = 0
	mayor_anomala = 0
	
	Escribir ("----------------Bienvenido------------------")
	Escribir ("Ingrese la cantidad total de piezas del lote")
	Leer cantidad_lotes
	
	Mientras  condicion_mientras <= cantidad_lotes Hacer
		
		condicion_mientras = condicion_mientras + 1
		Escribir ("Ingrese la longitud del perfil")
		Leer longitud_perfil
		Escribir ("Ingrese el espesor del perfil")
		Leer espesor_perfil
		Escribir ("¿Paso la prueba de estres? Si/No")
		Leer prueba_estres
		contador_mientras = longitud_perfil + espesor_perfil
		
		Si (contador_mientras >= 1) y (contador_mientras <= 7) Entonces
			Si (longitud_perfil > 1.2 y longitud_perfil <= 1.5) y (espesor_perfil >= 2.1 y espesor_perfil < 2.5) y (prueba_estres == "Si") Entonces
				//ESTO ES UN PERFIL APTO
				longitud_promedio = longitud_promedio + longitud_perfil
			SiNo
				Si (longitud_perfil <= 1) o (longitud_perfil >= 1.7) Entonces
					pieza_anomala = pieza_anomala + 1
					longitud_promedio = longitud_promedio + longitud_perfil
					Si longitud_perfil > mayor_anomala Entonces
						mayor_anomala = longitud_perfil
					FinSi
				SiNo
					longitud_promedio = longitud_promedio + longitud_perfil
					contador_no_aptos = contador_no_aptos + 1
				FinSi
			FinSi
		SiNo
			Escribir ("Valores incorrectos, deben estar comprendidos entre 0.5 y 3.5")
			Escribir ("Intentelo nuevamente")
			condicion_mientras = condicion_mientras - 1
		FinSi		
		
		
	FinMientras
	
	Si (contador_mientras >= 1) y (contador_mientras <= 7) Entonces
		Escribir ("Cantidad total de piezas del lote "), cantidad_lotes
		Escribir ("Cantidad de piezas no aptas "), contador_no_aptos
		Escribir ("Longitud media del lote "), longitud_promedio / cantidad_lotes 
		Escribir ("Proporcion de piezas defectuosas "), redon(contador_no_aptos/cantidad_lotes)
		Si pieza_anomala <> 0 Entonces
			Escribir ("Cantidad de piezas anomalas "), pieza_anomala
			Escribir ("Mayor longitud de pieza anomala "), mayor_anomala
		FinSi
	FinSi
	
	
	
	
	
FinProceso


