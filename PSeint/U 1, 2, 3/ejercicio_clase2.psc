Proceso ejercicio_clase2
	//Un vendedor recibe un sueldo base mas un 10% extra por comisión de sus ventas, el vendedor quiere saber cuanto dinero obtendrá en concepto de comision
	Definir sueldo_base, sueldo_final Como Real
	Mostrar "Ingrese el sueldo base"
	Leer sueldo_base 
	sueldo_final = sueldo_base + ((sueldo_base*10) / 100)
	Mostrar "El extra por comisión es de ", ((sueldo_base*10) / 100 ), " y el total es ", sueldo_final
	
FinProceso
