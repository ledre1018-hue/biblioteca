Funcion num1 <- cosultardisponibilidad ( Argumentos )
	
Fin Funcion

Funcion num2 <- prestarlibros ( Argumentos )
	
Fin Funcion

Funcion num3 <- devolverlibros ( Argumentos )
	
Fin Funcion




Algoritmo sistemabibleoteca
	Definir consultardisponibilidad, prestarlibros,devolverlibros Como Entero
	
	
	escribir "Inventariobibleoteca"
	Leer inventario
	Escribir "prestarlibros"
	Leer librosprestados
	Escribir "devolverlibros"
	Leer librosdevueltos
	Segun num1<-inventario Hacer
		opcion_1:
			secuencia_de_acciones_1
		num2:
			secuencia_de_acciones_2
		num3:
			secuencia_de_acciones_3
		De Otro Modo:
			num4 es = salir 
	Fin Segun
FinAlgoritmo