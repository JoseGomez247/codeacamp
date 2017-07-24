require "prime"#llamo al mètodo prime desde librerìa

def prime(num)
  p yield num#llamo ala operaciòn del mètodo por medio del paràmetro
  puts
end

 prime(10) {|number|  Prime.first number }#aquì està la operaciòn del mètodo junto con el valor al que se lo aplico


 def average_grade(grades)
p start=Time.new#el tiempo dentro de una variable para poder interpolarlo
  puts "------------Time started----------"
p  "Start time: #{start}"#interpolo el tiempo de inicio
p yield grades#llamo ala operaciòn del mètodo
p "Average is: #{yield grades}"#interpolo el resultado del mètodo
p finish=Time.new#meto el tiempo final dentro de una variable para poder interpolarlo
p "End time: #{finish}"#interpolo el tiempo final
puts "-------------Time finished--------"
p "Result: #{finish - start} seconds"#interpolo la cantidad de tiempo que tardè
  
 end
average_grade ([10, 9, 8, 9, 10, 8, 8]) {|grade| grade.inject {|val, num| val + num}/ grade.count.to_f  }
#aquì el còdigo que efectuarà el mètodo para aplicarlo en el paràmetro

    
  