students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0

   mientras "y" sea menor a students.length
    estudiantes_corrientes  es igual a estudiantes[y][x]

    si estudiantes_corrientes[1] es igual a  10
      agregar a estudiante corriente a mejores_estudiantes
    end

    si x es igual a (estudiantes[y].length menos uno)
      pon x es igual a 0
     y y es igual a y mas  1
    si no
      x es igual a x +  1
    end
  end
  llamar a mejores_estudiantes
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

