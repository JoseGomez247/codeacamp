p "ingresa un dato"#instrucciòn para el usuario
def user#inicia el mètodo
word = []#contenedor para acumular datos
begin#empieza el loop
  info = gets.chomp #variable para gets.chomp
  p "ingresa otro dato (o ingresa ya para terminar)"#segunda instrucciòn para continuar o finalizar
  word += [(info)] if not info == "ya"#condiciòn para el loop metiendo los datos ingresados en el contenedor
end while not info == "ya"#valor que marca el final del loop
 "nùmero de entradas del usuario: #{word.count}"#pongo el resultado que me va a imprimir con la cantidad de entradas 
end
p user#llamo al mètodo