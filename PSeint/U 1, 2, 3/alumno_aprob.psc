Proceso alumno_aprob
	Definir numero_uno, numero_dos, numero_tres Como Entero
	Mostrar "Ingrese las notas de los alumnos"
	Leer numero_uno, numero_dos, numero_tres
	Definir promedio Como Real
	promedio = (numero_dos+numero_tres+numero_uno) / 3
	Si promedio >= 6 Entonces
		Mostrar "El alumno se encuentra aprobado con promedio de ", promedio
	SiNo
		Mostrar "El alumno no se encuentra aprobado ya que su promedio es de ", promedio
	FinSi
FinProceso
