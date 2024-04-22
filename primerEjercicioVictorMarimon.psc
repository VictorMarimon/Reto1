Funcion cuadrado(lado)
	Definir i Como Entero
	Definir dib, x Como Caracter
	dib = " *"
	Para i<-1 Hasta lado Hacer
		x = x + "* "
	FinPara
	
	Para i<-1 Hasta lado Hacer
		Escribir x
	FinPara
FinFuncion
	
Funcion triangulo(lado)
	Definir i, esp Como Entero
	Definir dib, x, z Como Caracter
	Para i<- 1 Hasta lado Con Paso 1 Hacer
		z = z + "* "
		Escribir z 
	FinPara
	
FinFuncion

Algoritmo dibujo
	Definir cant, fig, selec Como Entero
	
	Repetir
	
	Escribir "¿Que figura deseas dibujar?"
	Escribir " "
	Escribir "1. Cuadrado"
	Escribir "2. Triangulo"
	Leer fig
	Escribir "Ingrese la altura deseada: "
	Leer cant
	
	Si fig == 1 O fig == 2 Entonces
		si fig == 1 Entonces
			Si cant < 0 Entonces
				Escribir "Ingrese una altura correcta"
				Escribir "Ej => 5"
			SiNo
				cuadrado(cant)
			Fin Si
		FinSi
		si fig == 2 Entonces
			Si cant < 0 Entonces
				Escribir "Ingrese una altura correcta"
				Escribir "Ej => 5"
			SiNo
				triangulo(cant)
			Fin Si
		FinSi
	SiNo
		Escribir "Seleccione una figura correcta"
		Escribir "Ej => 1"
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
