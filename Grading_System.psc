Algoritmo Grading_System
	Definir run Como Logico
	run = Verdadero
	Definir average Como Real //Promedio en ingles
	Definir semesterHrs Como Real
	Definir minimumAttendance Como Real
	
	Mientras run==Verdadero Hacer
		Borrar Pantalla
		Escribir "==========================="
		Escribir "        UACH SYSTEM        "
		Escribir "==========================="
		Escribir ""
		Escribir "1) Calculate Average"
		Escribir "2) Check No Ordinary Exam"
		Escribir "3) Baja Definitiva"
		Escribir "4) Credits"
		Escribir "5) Exit"
		Escribir ""
		
		Leer opc
		
		Segun opc Hacer
			Caso 1: //Promedio de los 3 parciales - Caleb
				
			Caso 2: //No ordinario Calculation - Eric
				Borrar Pantalla
				Escribir "How many hours per week is your failed subject?"
				Leer hours
				
				Mientras hours > 5 o hours <= 0 Hacer
					Borrar Pantalla
					Escribir "Invalid hours, try [1-5] hours"
					Leer hours
				FinMientras
				
				semesterHrs = hours * 16 //horas por semestre
				
				minimumAttendance = semesterHrs * 0.6 
				
				Escribir "How many absences do you have in total of such subject?"
				Leer absences //falta de asistencias
				
				Si absences < minimumAttendance Entonces
					Escribir "You are NOT able to present the No Ordinary Exam."
				SiNo
					Escribir "You are able to present the No Ordinary Exam."
				FinSi
				
				Escribir "Press any key to continue..."
				Esperar Tecla
				
			Caso 3: //Baja definitiva Calculation - Justie
				
			Caso 4: //Equipo - Justie
				Limpiar Pantalla
				Escribir "==========================="
				Escribir "          CREDITS          "
				Escribir "==========================="
				Escribir ""
				Escribir "Eric Gallo Gardea a394569"
				Escribir "Josue Caleb Escobedo Herrera a394468"
				Escribir "Justie Ariel Loya Martinez a394350"
				Escribir ""
				
				Escribir "Press any key to continue..."
				Esperar Tecla
			Caso 5: //Salir
				Escribir "Exiting system..."
				Esperar 1500 Milisegundos
				run = Falso
		FinSegun
		
	FinMientras
FinAlgoritmo
