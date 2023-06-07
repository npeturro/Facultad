Proceso EJCLASE_SUBPROCESO
    Definir M Como Entero
    Dimension M[4]
    
    M[0] = 4
    M[1] = 2
    M[2] = 1
    M[3] = 7
    
    ordenamientoMayor(M)
    
FinProceso


SubProceso ordenamientoMayor(B)
    Definir i, j, mayor, num Como Entero
    
    Para i <- 0 Hasta 3 Con Paso 1 Hacer
        mayor = B[i]
        Para j <- i+1 Hasta 3 Con Paso 1 Hacer
            Si B[j] > mayor Entonces
                num = mayor
                mayor = B[j]
                B[j] = num
            FinSi
        FinPara
        B[i] = mayor
        Escribir mayor
    FinPara
FinSubProceso
