def longest(arr)
  s= []
  r=[]

  arr.each do |x|
    s << x.length
  end

  max = s.sort.last 
   arr.each do |n|
    if max == n.length
       r << n
    end
  end
  r
end


p longest(['tres', 'pez', 'alerta', 'cuatro', 'tesla', 'tropas', 'siete']) == ["alerta", "cuatro", "tropas"]
p longest(['gato', 'perro', 'elefante', 'jirafa']) == ["elefante"]
p longest(['verde', 'rojo', 'negro', 'morado']) == ["morado"]