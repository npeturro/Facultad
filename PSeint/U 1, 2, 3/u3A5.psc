Proceso u3A5
	// Considera que estás desarrollando un algoritmo para una empresa que comercializa bombas
	//industriales. Define una variable para almacenar el tipo de bomba seleccionado por el usuario y
	//muestre un mensaje de acuerdo a lo siguiente:
	//1. Si el tipo seleccionado es 0, mostrar un mensaje indicando "No hay establecido un valor
	//definido para el tipo de bomba".
	//2. Si el tipo seleccionado es 1, mostrar un mensaje indicando "Es una bomba centrífuga".
	//3. Si el tipo seleccionado es 2, mostrar un mensaje indicando "Es una bomba de alta
	//presión".
	//4. Si el tipo seleccionado es 3, mostrar un mensaje indicando "Es una bomba neumática".
	//5. Si el tipo seleccionado es 4,mostrar un mensaje indicando "Es una bomba sumergible".
	//6. Si no se cumple ninguno de los valores anteriores mostrar el mensaje "No existe un
	//valor válido para tipo de bomba".
	Definir tipo_bomba Como Entero
	Escribir ("Bienvenido, seleccione el tipo de bomba")
	Leer tipo_bomba
	Segun tipo_bomba Hacer
		0:
			Escribir ("No hay establecido un valor definido para este tipo de bomba")
		1: 
			Escribir ("Es una bomba centrifuga")
		2:
			Escribir ("Es una bomba de alta presión")
		3:
			Escribir ("Es una bomba neumática")
		4:
			Escribir ("Es una bomba sumergible")
		De Otro Modo:
			Escribir ("No existe un valor válido para este tipo de bomba")
	FinSegun
	
FinProceso
