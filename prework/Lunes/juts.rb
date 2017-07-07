def array_index(ary, num)
  s= []#aqui estoy creando la caja donde entraran mis valores
  ary.each do |x|#aqui saco los valores del primer nivel de la caja
   (1..num).each do |y|#aqui saco los valores del segundo nivel de la caja
     s << [x,y]#aqui meto los valores a la caja que cree
 end 
end
s# aqui llamo o ejecuto la caja
end


p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]

p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]