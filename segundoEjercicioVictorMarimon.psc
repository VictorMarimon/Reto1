//numero primo se divide por el mismo y por uno, no 8hay residuo de la division
Funcion funct(value, value1) 
	Definir primo1, primo2, i, x, z Como Entero
	
	Para i<-1 Hasta value Con Paso 1 Hacer
		primo1 = value % i
		Si primo1 == 0 Entonces
			x = x +1
		Fin Si
		
	Fin Para
	
	Para i<-1 Hasta value1 Con Paso 1 Hacer
		primo2 = value1 % i
		Si primo2 == 0 Entonces
			z = z + 1
		Fin Si
	Fin Para
	
	Si x > 2  Entonces
		Escribir "El número " , value, " no es primo"
	SiNo
		Si z > 2  Entonces
			Escribir "El número " , value1, " no es primo"
		SiNo
			Si value + 2 == value1  Entonces
				Escribir " "
				Escribir "Los números " , value , " y " , value1
				Escribir "Son primos iguales"
			SiNo
				Escribir "Los números son primos, pero no son primos iguales"
			Fin Si
		FinSi
	FinSi
FinFuncion


Algoritmo primosGemelos
	Definir num1, num2, selec  Como Entero
	Repetir	
	Escribir "Ingrese el primer número: "
	Leer num1
	Escribir "Ingrese el segundo número: "
	Leer num2
	Si num1 < 0 O num2 < 0 Entonces
		Escribir "Por favor ingrese un número valido"
	SiNo
		funct(num1, num2)
	Fin Si
	Escribir " "
	Escribir "¿Desea realizar otra operación?"
	Escribir "1. Si"
	Escribir "2. No"
	Leer selec
	Escribir " "
	Si selec <> 1 Entonces
		selec = 2
		Escribir "Programa finalizado"
	FinSi
	Hasta Que selec == 2
FinAlgoritmo
