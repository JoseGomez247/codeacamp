def dudeney_number?(n)
  digit_sum = n.to_s.chars.map(&:to_i).inject(:+)
  #primero paso a string el número
  #lo paso a string para poder separar sus digitos dentro de un array con "chars"
  #luego con "map(&:to_i)" paso cada uno de sus digitos a interger
  #luego con "inject" los sumo
  n == digit_sum ** 3
  #a toda la operación anterior multiplicada tres veces por si misma
  #la igualo con el numero que recibo.
end


    p dudeney_number?(1) == true
    p dudeney_number?(125) == false
    p dudeney_number?(512) == true
    p dudeney_number?(1_728) == false
    p dudeney_number?(5_832) == true
