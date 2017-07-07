def large(word)
  if word.length > 20
    word.upcase
  else
    word
  end
end

p large("Hola vamos a la comida") == "HOLA VAMOS A LA COMIDA"
p large("Es hora de dormir") == "Es hora de dormir"
