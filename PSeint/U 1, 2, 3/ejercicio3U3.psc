Proceso ejercicio3U3
	//Supongamos que estas escribiendo un programa para calcular el costo de envio de un paquete. 
	//El costo de envio depende del peso del paquete y de la distancia a la que se enviara. 
	//Si el peso de paquete es mayor que 10 kg o la distancia es mayor que 1000 km , 
	//se aplicara un recargo adicional al costo de envio de $800. El costo de envio es de $250
	Definir peso_paquete, distancia_envio, costo_envio Como Real
	costo_envio = 250
	Mostrar "**Bienvenido al sistema de logistica**" 
	Mostrar "Para calcular el costo ingrese primero el peso de su paquete en kg" 
	Mostrar "y luego la distancia en km que se va a enviar."
	Leer peso_paquete, distancia_envio
	Si peso_paquete >= 10 o distancia_envio >= 1000 Entonces
		costo_envio = costo_envio + 800
		Mostrar "El costo de envio es de ", costo_envio
	SiNo
		Mostrar "El costo de envio es de ", costo_envio
	FinSi
	
FinProceso
