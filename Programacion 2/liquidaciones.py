def calcular_retenciones(salario_bruto):
    jubilacion = 0.10 * salario_bruto
    obra_social = 0.06 * salario_bruto
    sindicato = 0.02 * salario_bruto
    if salario_bruto > 400.000:
        exced = salario_bruto - 400.000
        salario_bruto -= exced * 0.35
    salario_bruto -= jubilacion + obra_social + sindicato
    reten = salario_bruto
    return reten


def liqui(empleado):

    nombre = input("Ingrese el nombre del empleado: ")

    for i in empleado:
        if nombre == i['nombre']:
            print(f"La paga por hora es de: {i['paga_hora']}")
            jornada_mensual = 160
            salario_bruto = i['paga_hora'] * jornada_mensual
            salario_bruto -= i['cant_faltas'] * 8 * i['paga_hora']
            reten = calcular_retenciones(salario_bruto)
            salario_neto = salario_bruto - reten
            print(f"El salario neto del empleado {i['nombre']} es de: {salario_neto}")
            return None
    else: print("No se encontró el empleado")
    return None