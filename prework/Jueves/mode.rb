def mode(arr)
  s= []#contenedor uno
  r=[]#contenedor 2
  arr.each do |x|#separo los elementos del array y les doy el valor "x"
    s << arr.count(x)#saco los valores que mas se repiten y los meto en un contenedor
  end#finalizo  aqui para que se guarde el valor de "s"
  arr.each do |i|# separo los elementos del array y les doy el valor de "i"
    m = arr.count(i)#sacolos elementos que se repiten en mi array para igualarlos con los otros
    #dentro de "m" para minimizar
    if s.max == m#igualo los valores maximos de "s" para que saque los mismos  de "m"
       r << i#la accion que se ejecutara el cumplirse la condiciòn
       #dentro de el segundo contenedor para que me los de en array
    else 
      arr#si no hay un numero que mas se repite solo pongo el array
    end
  end
   r.uniq#llamo a mis valores para que se ejecuten y le pongo el metodo "uniq" para que no se repitan los valores.
end
 
  



p mode([1, 2, 2, 3]) == [2]
 p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
 p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]