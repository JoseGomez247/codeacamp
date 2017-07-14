def total_between_age(arr, min, max)
  caja= []#contenedor para pasar los valores a array y poder contarlos
  arr.each do |x|#saco los valores de array para compararlos
   if x >= min && x <= max#si algùn valor del array es mayor o igual
    #al nùmero mìnimo o,  menor o igual al nùmero mayor...
     caja << x#entonces debe poner ese nùmero mas el menor y el mayor, los meto en un array
  end
  end
caja.count#llamo al valor en array para que me regrese la cantidad de numeros que coinciden
end

p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4