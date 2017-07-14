 # ¿Qué tipo de datos son cada una de las siguientes variables?
# ¿De que clase es cada uno y como lo puedes comprobar?
v = 9.0
w = ["1", "f", 4]
x = 1.4
y = "3"
z = {name: "Javier", email: "mail@codea.mx", fase: 1}
#v= Flotante porque usa decimal
#w= Array porque está dentro de corchetes
#x= Flotante porque usa decimal
#y= String porque está entre comillas
#z= Hash porque está entre corchetes de hash y usa elementos como valores
p v.class == Float
p w.class == Array
p x.class == Float
p y.class == String
p z.class == Hash

# Obtén el valor del cuarto elemento de la lista `fruits` utilizando código. Y cambia el segundo valor de la lista por una fruta diferente.
fruits = ["apple", "orange", "peach", "pineapple", "kiwi"]
p fruits[3] == "pineapple"#busco el cuarto elemento que està en la posicion 3
 fruits[1]= "banana"# coun un solo "igual", le asigno este elemento a esa posiciòn
p fruits[1] == "banana"#busco el segundo elemento en la posiciòn 1


# Obtén el último elemento de la lista `sports`.
sports = ["rugby", "tennis", "soccer", "cycling", "baseball"]
p sports.last == "baseball"#la funciòn last me da el ultimo elemento




# Añade un elemento más al principio de la lista `gadgets`.
gadgets = ["smartphone", "laptop", "tablet"]
 gadgets.unshift "PC"#unshift agrega un elemento al inicio del array
p gadgets[0] == "PC"#busco el elemento de la posiciòn 0





my_hash = { }

grades = {"Matematicas" => 6, "Fisica" => 7.5, "Literatura" => 9.5}
grades["Quimica"] = 8#le agrego un elemento a "grades" con su respectivo valor
 highest_value = grades["Literatura"]#le agrrego a "grades" el valor del elemento "Literatura"
p highest_value

def large_word(word)
    if word.length > 6#si la palabra contiene mas de 6 elementos...
         "large"#me regresa "large"
    else
         "small"#de lo contrario, me regresa "small"
    end
end
p large_word("hola") == "small"
p large_word("arboles") == "large"




def print_plus_ten(num)
    num.each do |x|# saco los elemtos del array y les doy el valor "x"
   p x + 10# sumo los elemntos uno por uno y los imprimo
end
end
print_plus_ten([7, 20, 4])

def plus_ten_array(arr)
    r= []#contenedor para pasar a array
    arr.each do |x|#saco los elementos y les doy el valor de "x"
        r << x + 10# sumo los elementos y los mento en el contenedor
    end
    r#llamo al resultado en array
end

p plus_ten_array([4,3,7]) == [14, 13, 17]


 def odd_or_even_plus(min,max)
     r= []#contenedor
     arr= (min..max)#simplifico para sacar los elemntos
     arr.each do |x|#saco los elementos y les doy el valor de "x"
 if x % 2 == 0#pcondiciòn para los pares
      r <<  x + 2#efectuo la suma pasandola a array
 else #cindiciòn si noson pares
     r <<  x + 3# se efectua la suma y se hacen array
 end
 end
  r#mando a llamar al array
end





                            
p odd_or_even_plus(3, 9) == [6, 6, 8, 8, 10, 10, 12]
