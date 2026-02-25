Algoritmo Grading_System
	Definir run Como Logico
	run = Verdadero
	Definir average Como Real //Promedio en ingles
	Definir semesterHrs Como Real
	Definir minimumAttendance Como Real

	Definir choice Como caracter
	Definir p1,p2,p3,prom,error,r Como Real
	Error=1
	
	Definir failedBasics Como Entero
	Definir failedSubjects Como Real

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
			Caso 1: //Promedio de los 3 parciales - Caleb //ESTA CASI TERMINADO
				Borrar Pantalla
				Mientras error=1
					Choice="Y"
					mientras (Choice="Y" o choice="y") y error=1
						Escribir "Write your first partial grade"
						Leer p1
						
						Si p1<= 10 y p1>= 0
							
							
							choice=N
						SiNo
							Escribir "Your grade needs to be between 0 and 10"
							Escribir "Do you want to write your first partial grade again? Y/N"
							
							Leer choice
							Si choice ="y" o choice="Y"
								r=0
							sino
								Escribir "Press any key to continue to the menu..."
								esperar tecla
								error=322443243312
							FinSi
						FinSi
					FinMientras
					Choice="Y"
					mientras (Choice="Y" o choice="y") y error=1
						Escribir "Write your second partial grade"
						Leer p2
						
						Si p2<= 10 y p2>= 0
							
							
							choice=N
						SiNo
							Escribir "Your grade needs to be between 0 and 10"
							Escribir "Do you want to write your second partial grade again? Y/N"
							
							Leer choice
							Si choice ="y" o choice="Y"
								r=0
								Escribir "Press any key to continue to the menu..."
								esperar tecla
								error=322443243312
							FinSi
						FinSi
					FinMientras
					Choice="y"
					mientras (Choice="Y" o choice="y") y error=1
						Escribir "Write your third partial grade"
						Leer p3
						
						Si p3<= 10 y p3>= 0
							
							
							choice=N
						SiNo
							Escribir "Your grade needs to be between 0 and 10"
							Escribir "Do you want to write your third partial grade again? Y/N"
							
							Leer choice
							Si choice ="y" o choice="Y"
								r=0
							sino
								Escribir "Press any key to continue to the menu..."
								esperar tecla
								error=322443243312
							FinSi
						FinSi
					FinMientras
					Si error=1
						prom=(p1*0.3)+(p2*0.3)+(p3*0.4)
						Escribir "Your average is: ", prom	
						Si prom <7 Entonces
							Escribir "You have to retake the course :<"
						SiNo
							Escribir "Congratulations, you passed!"
						FinSi
						error=23
						Escribir "Press any key to go to the menu"
						
						Esperar Tecla
					FinSi
					
					
					
					
				FinMientras
				choice="y"
				error=1
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
				Borrar Pantalla
				
				Escribir "How many absences do you have in total of such subject?"
				Leer absences //falta de asistencias
				
				Borrar Pantalla
				Si absences > minimumAttendance Entonces
					Escribir "You are NOT able to present the No Ordinary Exam."
				SiNo
					Borrar Pantalla
					Escribir "How many coursed subjects do you have?"
					Leer total_subjects
					
					Mientras total_subjects <= 0 o total_subjects > 10 Hacer
						Borrar Pantalla
						Escribir "Invalid amount, re-enter [1-10] subjects!"
						Leer total_subjects
					FinMientras
					
					Borrar Pantalla
					
					Escribir "How many failed subjects do you have?"
					Leer failed_subjects
					
					Mientras failed_subjects < 0 o failed_subjects > total_subjects Hacer
						Borrar Pantalla
						Escribir "Invalid amount! Re-enter [0 - Total Subjects]"
						Leer failed_subjects
					FinMientras
					
					minimum_subjects = total_subjects * 0.5
					
					Si minimum_subjects No Es Entero Entonces
						minimum_subjects = minimum_subjects + 0.5
					FinSi
					
					Borrar Pantalla
					
					Si failed_subjects > minimum_subjects Entonces
						Escribir "You are NOT able to present the No Ordinary exam."
					SiNo
						Escribir "You are able to present the No Ordinary exam."
					FinSi
					
				FinSi
				
				Escribir ""
				Escribir "Press any key to continue..."
				Esperar Tecla
				
			Caso 3: //Baja definitiva Calculation - Justie
				Borrar Pantalla
				Escribir "How many basic subjects did you fail? (Physics, Calculus, Algebra)"
				Leer failedBasics
				
				Mientras failedBasics < 0 o failedBasics > 3 Hacer
					Borrar Pantalla
					Escribir "Invalid format ([0-3] failed basic subjects)"
					Leer failedBasics
				FinMientras
				
				Escribir "How many subjects do you have in total?"
				Leer total_subjects
				
				Mientras total_subjects<=0 o total_subjects>10 Hacer
					Borrar Pantalla
					Escribir "Invalid format ([1-10] total subjects)"
					Leer total_subjects
				FinMientras
				
				Mientras failedBasics>total_subjects Hacer
					Borrar Pantalla
					Escribir "Error: Cannot have a number higher than the total subjects"
					Escribir "Re-enter total subjects"
					Leer total_subjects
				FinMientras
				
				Escribir "How many non-basic subjects did you fail?"
				Leer failedSubjects
				
				Mientras failedSubjects<0 o (failedSubjects+failedBasics)>total_subjects Hacer
					Escribir "Invalid format, re-enter failed subjects [0 -> Total Subjects]"
					Leer failedSubjects
				FinMientras
				
				Si (failedSubjects<0 o (failedSubjects+failedBasics)>total_subjects)
					Escribir "How is this possible?"
					Escribir "Exiting.."
					Escribir ""
					Esperar 1500 Milisegundos
				SiNo
					Si (total_subjects%2)<>0 //To tell if a number is even or odd
						total_subjects=total_subjects+1
					FinSi
					total_subjects=total_subjects/2 //half the subjects
					
					//Final stretch
					Si (total_subjects>=(failedBasics+failedSubjects))
						Escribir "Congrats! You may take the non ordinary exam OR retake them next semester"
					FinSi
					Si (total_subjects<(failedBasics+failedSubjects))
						Si failedBasics=3
							Escribir ""
							Escribir "You are out :("
							Escribir "..."
							Escribir ""
						SiNo
							Escribir "You are unable to take the non ordinary exam (too many failed subjects)"
							Escribir "However you may retake them next semester"
							Escribir ""
						FinSi
					FinSi
				FinSi
								
				Escribir "Do you wish to exit the program? (y/n)"
				Leer choice
				
				Si choice = "y"
					Escribir ""
					Escribir "Exiting system.."
					Esperar 1500 Milisegundos
					run = Falso
				FinSi
				
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
				
			Caso 5: //Salir - Justie
				Escribir "Exiting system..."
				Esperar 1500 Milisegundos
				run = Falso
		FinSegun
	FinMientras
FinAlgoritmo
