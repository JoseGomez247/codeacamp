p "diccionary_sort"#nombre del programa
p "escribe una palabra"#primera isntrucciòn 

word = []#contenedor para acumular las palabras
begin#aquì empieza el loop
  info = gets.chomp #pido la entrada de datos del usuario
  p "ingresa otra palabra (o presiona enter para terminar)"#segunda instrucciòn para continuar o finalizar
  word += [(info)] if not info.empty?#meto los valores en el array mientras la entrada no estè vacìa
end while not info.empty?#si la entrada està vacìa se detendrà el programa
p "Felicidades, tu diccionario tiene #{word.count} palabras"#imprimo la frase mas la cantidad de palabras ingresadas
p word.sort_by{|x| x.downcase}#hago que me ponga las palabras ordenadas alfabèticamente sin importar las mayùsculas o minùsculas


 
