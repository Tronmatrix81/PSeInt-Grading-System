Algoritmo Grading_System
	Definir run Como Logico
	run = Verdadero
	Definir average Como Real //Promedio en ingles
	Definir semesterHrs Como Real
	Definir minimumAttendance Como Real
	Definir choice Como caracter
	Definir p1,p2,p3,prom,error Como Real

	
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
		
		Leer opc
		
		Segun opc Hacer
			Caso 1: //Promedio de los 3 parciales - Caleb
				Mientras error=1
					Choice="Y"
					mientras Choice="Y" o choice="y"
						Escribir "Write your first partial grade"
						Leer p1
						
						Si p<= 10 y p1>= 0
							
							Escribir "Write your second partial grade"
							Leer p2
							yes=N
						SiNo
							Escribir "Your grade needs to be between 0 and 10"
							Escribir "Do you want to write your first partial grade again? Y/N"
							
							Leer choice
						FinSi
					FinMientras
					
					
					
					Si p2 <= 10 y p2 >= 0
						Escribir "Write your third partial grade"
						Leer p3
						
						Si p3 <= 10 y p3 >= 0
							Escribir "Write your third partial grade"
							Leer p3
							prom=(p1*0.3)+(p2*0.3)+(p3*0.4)
							Escribir "Your average is: ", prom
							
						FinSi					
					FinSi
				FinMientras
				
				
				
				
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
				
			Caso 3: //Baja definitiva Calculation - Justin
				
			Caso 4: //Equipo
				
			Caso 5: //Salir
				
		FinSegun
		
	FinMientras
FinAlgoritmo
