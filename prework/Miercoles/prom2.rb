
def average(arr)#inicio la creacion del metodo
  s= 0#este valor me sirve para que se sumen entre si los valores
  caja= arr.length#este valor me sirve para que la suma (s) se divida entre el  numero de valores del arreglo
    arr.each do |x|#inicio con el each para sacar los valores
      s= s + x#hago la suma de los valores para que se acumulen y se sumen entre si
    end
s / caja.to_f#llamo a los valores
end 


p average([8, 8, 7, 6, 9]) == 7.6
p average([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
p average([5, 5, 5, 8, 8, 7, 7, 2]) == 5.875 