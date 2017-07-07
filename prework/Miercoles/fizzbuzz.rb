      

def Fizzbuzz(min, max)# empiezo a crear el metodo
  s= []#hago los corchetes para posteriormente meter en ellos las condiciones
(min..max).each do |i|#separo mis argumentos para que se ejecuten uno por uno desde minimo hasta maximo
  if i % 3 == 0 && i % 5 == 0#la primera condicion para los multiplos de 3 y 5
     s << 'FizzBuzz'#lo que va a hacer si se cumple la condicion
  elsif i % 3 == 0#la segunda condicion para los multiplos de 3
     s << 'Fizz'#si se cumple la segunda condicion esto es lo que me regresa
  elsif i % 5 == 0 #tercera condicion para los multiplos de 5
     s << 'Buzz'#si se cumple la tercera condicion esto me regresara
  else
     s << i #si no se cumple ninguna condicion, simplemente ponra los numeros en orden de minimo a maximo
  end#a la vez de hacer los resultados que quiero que me regrese, los meto en los corchetes de "s"
  end
   s#aqui le llamo a los valores para que ya me los regrese dentro de los corchetes
end

p Fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p Fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"] 