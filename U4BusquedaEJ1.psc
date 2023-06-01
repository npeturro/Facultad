Proceso U4BusquedaEJ1
	//Realizar un programa que permita al usuario de un hospital, buscar a un paciente por el
	//número de DNI e informar al usuario los datos de la persona.
	//Realizar una búsqueda secuencia
	
	Definir busqueda, dimen, dni_paciente, edad_paciente, option Como Entero
	Definir nombre_paciente, apellido_paciente, telefono_paciente, busqueda_apellido, busqueda_nombre Como Caracter
	
	Dimension nombre_paciente[8], apellido_paciente[8], dni_paciente[8], telefono_paciente[8], edad_paciente[10]
	dimen = 8
	
	carga_de_datos(nombre_paciente, apellido_paciente, dni_paciente, telefono_paciente, edad_paciente)
	
	Repetir
		Escribir ("-----------------------------------------")
		Escribir ("¿Que acción desea realizar?")
		Escribir ("1 - Buscar paciente por DNI")
		Escribir ("2 - Ordenar alfabeticamente por apellidos.")
		Escribir ("3 - Ordenar por edad de mayor a menor")
		Escribir ("4 - Ordenar por edad de menor a mayor")
		Escribir ("5 - Buscar paciente por Nombre y Apellido")
		Escribir ("-----------------------------------------")
		Leer option
		Segun option Hacer
			1:
				Repetir
					
					Escribir Sin Saltar("Ingrese DNI del paciente (Sin puntos ni guiones): ")
					Leer busqueda
					Si Longitud(ConvertirATexto(busqueda)) >= 6 y Longitud(ConvertirATexto(busqueda)) <= 8 Entonces
						search_by_patients(nombre_paciente, apellido_paciente, dni_paciente, telefono_paciente, edad_paciente, dimen, busqueda)
					SiNo
						Escribir ("DNI Invalido, reintentelo.")
					FinSi
					
				Mientras Que Longitud(ConvertirATexto(busqueda)) < 6 o Longitud(ConvertirATexto(busqueda)) > 8 
			2:
				show_patients(apellido_paciente, nombre_paciente, dimen)
			3:
				order_by_ageMA(apellido_paciente, nombre_paciente, edad_paciente, dimen)
			4:
				order_by_ageME(apellido_paciente, nombre_paciente, edad_paciente, dimen)
			5: 
				Escribir Sin Saltar("Ingrese el Apellido (Primer letra en mayuscula):")
				Leer busqueda_apellido
				Escribir Sin Saltar ("Nombre del paciente (Primer letra en mayuscula): ")
				Leer busqueda_nombre
				search_by_lastname_name(nombre_paciente, apellido_paciente, dni_paciente, telefono_paciente, edad_paciente, dimen, busqueda_apellido, busqueda_nombre)
			De Otro Modo:
				
		Fin Segun
	Mientras Que option = 5 o option = 1
	
	
FinProceso

SubProceso carga_de_datos(nombre, apellido, dni, telefono, edad)
	
	nombre[0] = "Ana" 
	nombre[1] = "Camila"
	nombre[2] = "Bruno"
	nombre[3] = "Dardo"
	nombre[4] = "Ernestina"
	nombre[5] = "Fausto"
	nombre[6] = "Jasmin"
	nombre[7] = "Leonardo"
	
	apellido[0] = "Martinez"
	apellido[1] = "Noe"
	apellido[2] = "Noe"
	apellido[3] = "Pistilli"
	apellido[4] = "Quesada"
	apellido[5] = "Ramirez"
	apellido[6] = "Sosa"
	apellido[7] = "Tolosa"
	
	dni[0] = 17123456 
	dni[1] = 25789101 
	dni[2] = 39121314 
	dni[3] = 21151617
	dni[4] = 33181920
	dni[5] = 15212223
	dni[6] = 40242526 
	dni[7] = 11272829 
	
	telefono[0] = "+541141200011"
	telefono[1] = "+543419485831"
	telefono[2] = "+541145565789"
	telefono[3] = "+541158637543"
	telefono[4] = "+541161294758"
	telefono[5] = "+543423444567"
	telefono[6] = "+543402512345"
	telefono[7] = "+541151234567"
	
	edad[0] = 56 
	edad[1] = 45
	edad[2] = 26
	edad[3] = 48
	edad[4] = 35
	edad[5] = 60
	edad[6] = 25
	edad[7] = 70
	
FinSubProceso

SubProceso search_by_patients(nombre, apellido, dni, telefono, edad, dim, buscar)
	
	Definir i Como Entero
	Definir encontrado Como Logico
	encontrado = Falso 
	Para i = 0 Hasta dim - 1 Con paso 1 Hacer
		Si dni[i] == buscar Entonces
			encontrado = Verdadero
			Escribir ("Busqueda finalizada. Se encontro un paciente con los siguientes datos:")
			Escribir ("DNI: "), dni[i]
			Escribir ("Nombre y Apellido: "), nombre[i], (" "), apellido[i]
			Escribir ("Telefono: "), telefono[i]
			Escribir ("Edad: "), edad[i]
		FinSi
		
	FinPara
	Si encontrado = Falso Entonces
		Escribir ("DNI no encontrado")			
	FinSi
	
FinSubProceso

SubProceso show_patients(apellido, nombre, dim)

	Definir i,j Como Entero
	Definir apellido_aux, nombre_aux Como Caracter
	
	Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
        Para j = i+1 Hasta dim - 1 Con Paso 1 Hacer
            Si apellido[i] > apellido[j] Entonces
				apellido_aux = apellido[i]
				nombre_aux = nombre[i]
				apellido[i] = apellido[j]
				nombre[i] = nombre[j]
				apellido[j] = apellido_aux
				nombre[j] = nombre_aux
            FinSi
        FinPara
    FinPara
	
	Escribir ("Orden alfabetico por Apellido de los pacientes: ") 
	
	Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
		Escribir  apellido[i], (" "), nombre[i]
	FinPara
	
FinSubProceso

SubProceso order_by_ageMA(apellido, nombre, edad, dim)
	
	Definir i, j, mayor, num Como Entero
	Definir apellido_aux, nombre_aux Como Caracter
	
	Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
        mayor = edad[i]
        Para j = i+1 Hasta dim - 1 Con Paso 1 Hacer
            Si edad[j] > mayor Entonces
                num = mayor
                mayor = edad[j]
                edad[j] = num
				apellido_aux = apellido[i]
				nombre_aux = nombre[i]
				apellido[i] = apellido[j]
				nombre[i] = nombre[j]
				apellido[j] = apellido_aux
				nombre[j] = nombre_aux
            FinSi
        FinPara
        edad[i] = mayor
    FinPara
	
	Escribir ("Orden por edad de mayor a menor de pacientes: ") 
	
	Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
		Escribir  ("Edad: "), edad[i], (", Apellido y Nombre: "), apellido[i], (" "), nombre[i]
	FinPara
	
	
FinSubProceso

SubProceso order_by_ageME(apellido, nombre, edad, dim)
	
	Definir i, j, menor, num Como Entero
	Definir apellido_aux, nombre_aux Como Caracter
	
	Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
        menor = edad[i]
        Para j = i+1 Hasta dim - 1 Con Paso 1 Hacer
            Si edad[j] < menor Entonces
                num = menor
                menor = edad[j]
                edad[j] = num
				apellido_aux = apellido[i]
				nombre_aux = nombre[i]
				apellido[i] = apellido[j]
				nombre[i] = nombre[j]
				apellido[j] = apellido_aux
				nombre[j] = nombre_aux
            FinSi
        FinPara
        edad[i] = menor
    FinPara
	
	Para i = 0 Hasta dim - 1 Con Paso 1 Hacer
		Escribir  ("Edad: "), edad[i], (", Apellido y Nombre: "), apellido[i], (" "), nombre[i]
	FinPara
	
FinSubProceso

SubProceso search_by_lastname_name(nombre, apellido, dni, telefono, edad, dim, buscar_ape, buscar_nom)
	
	Definir i Como Entero
	Definir encontrado Como Logico
	encontrado = Falso 
	Para i = 0 Hasta dim - 1 Con paso 1 Hacer
		Si buscar_nom = nombre[i] y buscar_ape = apellido[i] Entonces
			encontrado = Verdadero
			Escribir ("Busqueda finalizada. Se encontro un paciente con los siguientes datos:")
			Escribir ("DNI: "), dni[i]
			Escribir ("Nombre y Apellido: "), nombre[i], (" "), apellido[i]
			Escribir ("Telefono: "), telefono[i]
			Escribir ("Edad: "), edad[i]
		FinSi
		
	FinPara
	Si encontrado = Falso Entonces
		Escribir ("Paciente no encontrado")			
	FinSi
	
	
FinSubProceso





	