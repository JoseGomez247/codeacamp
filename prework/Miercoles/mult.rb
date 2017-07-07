def multiplication_tables(num)
  a= (1..10)#estos son los valores por los que voy a multiplicar el numero

  (1..num).each do |x|#hago que mi numero se multiplique uno por uno
    a.each do |y|#hago que los valores de a se multipliquen uno por uno con los de mi numero
      print  "#{y * x}\t"
    end#arriba le hago tab para que los ordene uno por uno en series
    puts#hago un salto de linea para que no se desordenen los valores al agranadar el terminal
   end
   puts
 end
 


multiplication_tables(5)
