def shortest(arr)
  s= []#primer contenedor
  r=[]#segundo contenedor

  arr.each do |x|#saco los valores del array uno por uno
    s << x.length#saco la cantidad de valores de mi array y los meto en el contenedor uno
  end

  min = s.sort.first #ordeno los valores de menor a mayor, saco el primer valor y lo meto a una variable nueva
   arr.each do |n|#saclo denuevo los valores de mi array uno por uno
    if min == n.length#primera condicion con el array en length para poder compararlos
       r << n#si la condicion se cumple, me devolvera el resultado del no. min en string, dentro del degundo contenedor
    end
  end
  r#le llamo a los valores
end
  
p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"]