Algoritmo analisis_de_calificaciones
	Definir opcion, totalCalificaciones Como Entero
	Definir i Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir aprobados, reprobados Como Entero
	Definir promedio, suma, mayor, menor Como Real
	Definir id Como Entero
	Definir estudiante Como Caracter
	Definir materia Como Caracter
	Definir periodo Como Caracter
	Definir estado Como Caracter
	Definir calificacion Como Real
	Dimension id[100]
	Dimension estudiante[100]
	Dimension materia[100]
	Dimension periodo[100]
	Dimension calificacion[100]
	Dimension estado[100]
	totalCalificaciones <- 0
	siguienteID <- 1
	//-----------------------------------------------//
	//--|menu_principal_analisis_de_calificaciones|--//
	//-----------------------------------------------//
	Repetir
		Escribir "menu principal analisis de calificaciones"
		Escribir "1) registrar calificacion"
		Escribir "2) editar calificacion"
		Escribir "3) eliminar calificacion"
		Escribir "4) buscar calificacion"
		Escribir "5) listar calificaciones"
		Escribir "6) ver detalles de la calificacion"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//----------------------------//
			//--|registrar_calificacion|--//
			//----------------------------//
			1:
				Escribir "registrar calificacion"
				id[totalCalificaciones + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalCalificaciones + 1]
				Escribir "ingrese el nombre del estudiante:"
				Leer estudiante[totalCalificaciones + 1]
				Escribir "ingrese la materia:"
				Leer materia[totalCalificaciones + 1]
				Escribir "ingrese el periodo:"
				Leer periodo[totalCalificaciones + 1]
				Escribir "ingrese la calificacion:"
				Leer calificacion[totalCalificaciones + 1]
				Si calificacion[totalCalificaciones + 1] >= 3 Entonces
					estado[totalCalificaciones + 1] <- "aprobado"
				SiNo
					estado[totalCalificaciones + 1] <- "reprobado"
				FinSi
				totalCalificaciones <- totalCalificaciones + 1
				Escribir "calificacion registrada correctamente."
			//-------------------------//
			//--|editar_calificacion|--//
			//-------------------------//
			2:
				Escribir "editar calificacion"
				Si totalCalificaciones = 0 Entonces
					Escribir "no hay calificaciones registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalCalificaciones Hacer
						Escribir id[i], " | ", estudiante[i], " | ", materia[i], " | ", periodo[i], " | ", calificacion[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la calificacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCalificaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo estudiante:"
							Leer estudiante[i]
							Escribir "ingrese la nueva materia:"
							Leer materia[i]
							Escribir "ingrese el nuevo periodo:"
							Leer periodo[i]
							Escribir "ingrese la nueva calificacion:"
							Leer calificacion[i]
							Si calificacion[i] >= 3 Entonces
								estado[i] <- "aprobado"
							SiNo
								estado[i] <- "reprobado"
							FinSi
							Escribir "calificacion editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una calificacion con ese id."
					FinSi
				FinSi
			//---------------------------//
			//--|eliminar_calificacion|--//
			//---------------------------//
			3:
				Escribir "eliminar calificacion"
				Si totalCalificaciones = 0 Entonces
					Escribir "no hay calificaciones registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalCalificaciones Hacer
						Escribir id[i], " | ", estudiante[i], " | ", materia[i], " | ", periodo[i], " | ", calificacion[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la calificacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCalificaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalCalificaciones Entonces
								Para j <- i Hasta totalCalificaciones - 1 Hacer
									id[j] <- id[j+1]
									estudiante[j] <- estudiante[j+1]
									materia[j] <- materia[j+1]
									periodo[j] <- periodo[j+1]
									calificacion[j] <- calificacion[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalCalificaciones <- totalCalificaciones - 1
							Escribir "calificacion eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una calificacion con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|buscar_calificacion|--//
			//-------------------------//
			4:
				Escribir "buscar calificacion"
				Si totalCalificaciones = 0 Entonces
					Escribir "no hay calificaciones registradas."
				SiNo
					Escribir "ingrese el id de la calificacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCalificaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", estudiante[i], " | ", materia[i], " | ", periodo[i], " | ", calificacion[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una calificacion con ese id."
					FinSi
				FinSi
			//---------------------------//
			//--|listar_calificaciones|--//
			//---------------------------//
			5:
				Escribir "listar calificaciones"
				Si totalCalificaciones = 0 Entonces
					Escribir "no hay calificaciones registradas."
				SiNo
					Escribir "datos registrados"
					
					Para i <- 1 Hasta totalCalificaciones Hacer
						Escribir id[i], " | ", estudiante[i], " | ", materia[i], " | ", periodo[i], " | ", calificacion[i], " | ", estado[i]
					FinPara
				FinSi
			//-------------------------------------//
			//--|ver_detalles_de_la_calificacion|--//
			//-------------------------------------//
			6:
				Escribir "ver detalles de la calificacion"
				Si totalCalificaciones = 0 Entonces
					Escribir "no hay calificaciones registradas."
				SiNo
					Escribir "ingrese el id de la calificacion:"
					Leer idBuscar
					encontrado <- Falso
					
					Para i <- 1 Hasta totalCalificaciones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							
							Escribir "detalles de la calificacion"
							Escribir "id: ", id[i]
							Escribir "estudiante: ", estudiante[i]
							Escribir "materia: ", materia[i]
							Escribir "periodo: ", periodo[i]
							Escribir "calificacion: ", calificacion[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una calificacion con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalCalificaciones = 0 Entonces
					Escribir "no hay calificaciones registradas."
				SiNo
					suma <- 0
					aprobados <- 0
					reprobados <- 0
					mayor <- calificacion[1]
					menor <- calificacion[1]
					Para i <- 1 Hasta totalCalificaciones Hacer
						suma <- suma + calificacion[i]
						Si calificacion[i] > mayor Entonces
							mayor <- calificacion[i]
						FinSi
						Si calificacion[i] < menor Entonces
							menor <- calificacion[i]
						FinSi
						Si estado[i] = "aprobado" Entonces
							aprobados <- aprobados + 1
						SiNo
							reprobados <- reprobados + 1
						FinSi
					FinPara
					promedio <- suma / totalCalificaciones
					Escribir " estadistica general"
					Escribir "total de estudiantes: ", totalCalificaciones
					Escribir "promedio general: ", promedio
					Escribir "mayor calificacion: ", mayor
					Escribir "menor calificacion: ", menor
					Escribir "aprobados: ", aprobados
					Escribir "reprobados: ", reprobados
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar analisis de calificaciones."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo