def median(arr)
sorted = arr.sort#hago sort para que saque los valores uno por uno
mid = arr.size/2#le hago size para que me divida la cantidad de elementos del array entre 2, me va a dar interger
if arr.count % 2 == 0#la condicion por si el array tiene elementos pares
  (sorted[mid].to_f + (sorted[mid]-1)) / 2#como siempre me da el de enmedio de la derecha
  #sumo ese màs el mismo pero menos uno para que me de el de la izquierda y los divido entre dos pero paso uno
  #a flotante para que me de la divisiòn flotante
else 
  sorted[mid]#para los nones solo pondra el que està en medio
end
end
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8