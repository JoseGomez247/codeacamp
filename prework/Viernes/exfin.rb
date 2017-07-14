def vowels(words)
     r= []#contenedor para aray
    words.each do |x|#separo los elemento y les doy el valor de "x"
         r << x.delete("a" "e" "i" "o" "u")#borro las vocales y las meto dentro del contenedor
    end
     r#llamo al array
 end

 p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]


 def get_sum(num1, num2)
    if num1 != num2#efectuo la primera condiciòn en el caso que sean diferentes los numeros
         num1 + num2#si es el caso, se suman
    else 
         num1#si los valores son iguales solo pone uno, en este caso el primero
    end
 end

 p get_sum(1, 0) == 1
 p get_sum(1, 2) == 3
 p get_sum(0, 1) == 1
 p get_sum(1, 1) == 1
 p get_sum(-1, 0) == -1
 p get_sum(-1, 2) == 1



  def char_word_counter(string)
   word= string.split.count#hago que me pase el string a un array y separe los elementos parapoderles hacer el metodo count
charact= string.gsub(/[" "]/, "" ).length#quito los espacios del string para hacer length sin contar los espacios
      "This sentence has #{word} words & #{charact} characters"#pongo lo que me va a regresar con los valores anteriores
  end

   p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
   p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
   p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
   p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"





 def food_group(string)
    food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maiz', 'Elote', 'Calabaza', 'Papa'],#mi array base con los datos que usarè para comparar
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmon', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogurt', 'Queso', 'Crema'] 
                  }
    food_groups.each do |key, value|#separo los valores y llaves de hash
        value.each do |y|#le doy el valor de "y" al valor del hash 
     return key if string == y #uso return para que me regrese el resultado que quiero si la condiciòn 
     #"si string es igual al valor de hash" se cumple, el cual es que me devuelva la llave del valor introducido
 end
  end
  return "comida no encontrada"#aquì usè return para que me ponga este string si la condiciòn anterior no se cumple
end




  p food_group('Crema') == "lacteo"
  p food_group('Res') == "carne"
  p food_group('Piña') == "fruta"
  p food_group('Caña') == "comida no encontrada"
