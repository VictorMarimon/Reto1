Funcion auto(cant)
	Definir monto, bill, cont Como Entero
	
	Si cant >= 100000 Entonces
		bill = cant % 100000
		cont = (cant-bill) / 100000 
		Escribir "Billetes de 100000: " , cont
		monto = bill
		
		Si monto >= 50000 Entonces
			bill = monto % 50000
			cont = (monto-bill) / 50000 
			Escribir "Billetes de 50000: " , cont
			monto = bill
			
			Si monto >= 20000 Entonces
				bill = monto % 20000
				cont = (monto-bill) / 20000 
				Escribir "Billetes de 20000: " , cont
				monto = bill
				
				Si monto >= 10000 Entonces
					bill = monto % 10000
					cont = (monto-bill) / 10000 
					Escribir "Billetes de 10000: " , cont
					monto = bill
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	Si cant >= 50000 y cant < 100000 Entonces
		bill = cant % 50000
		cont = (cant-bill) / 50000 
		Escribir "Billetes de 50000: " , cont
		monto = bill
		
		Si monto >= 20000 Entonces
			bill = monto % 20000
			cont = (monto-bill) / 20000 
			Escribir "Billetes de 20000: " , cont
			monto = bill
			
			Si monto >= 10000 Entonces
				bill = monto % 10000
				cont = (monto-bill) / 10000 
				Escribir "Billetes de 10000: " , cont
				monto = bill
			Fin Si
		Fin Si
	Fin Si
	
	Si cant >= 20000 y cant < 50000 Entonces
			bill = cant % 20000
			cont = (cant-bill) / 20000 
			Escribir "Billetes de 20000: " , cont
			monto = bill
			
		Si monto >= 10000 Entonces
			bill = monto % 10000
			cont = (monto-bill) / 10000 
			Escribir "Billetes de 10000: " , cont
			monto = bill
		Fin Si
	Fin Si
	
	Si cant >= 10000 y cant < 20000 Entonces
		bill = cant % 10000
		cont = (cant-bill) / 10000 
		Escribir "Billetes de 10000: " , cont
		monto = bill
	Fin Si
	
FinFuncion

Algoritmo cajero
	Definir cantidad, selec Como Entero
	Repetir
		
		Escribir "Simulación cajero"
		Escribir "(minimo monto a retirar 10000)"
		Escribir " "
		Escribir "Por favor ingrese la cantidad que desea retirar"
		Leer cantidad
		
	Si cantidad < 0 o cantidad < 10000 Entonces
		Escribir " "	
		Escribir "Minimo monto a retirar 10000"
	SiNo
		Escribir " "
		Escribir "Billetes a entregar: "
		Escribir " "
		auto(cantidad)
	FinSi
	
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
