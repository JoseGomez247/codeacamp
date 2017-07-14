def canonical(word)
  word.split(//).sort.join#separo los elementos de la palabra dentro de un string, los ordeno y los regreso a una sola palabra.
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)#comparo las palabras del resultado anterior para que me de true si son iguales y false si no lo son
  #pues si alguna de las palabras tiene una letra menos o mas entonces no son anagramas.
end

  p are_anagrams?("amor", "roma")

  def anagrams_for(word1, arr)
    arr.select { |x| are_anagrams?(word1, x)}#uso select en el array para que me lo separe por palabras y no como arrray
    #para poder usarlo en el metodo "are_anagrams?" y para que me regrese solamente los valores verdaderos del metodo
  end

  p anagrams_for("cantores", ["cartones", "amor", "carro", "mora", "lola", "cafe", "ancestro"])