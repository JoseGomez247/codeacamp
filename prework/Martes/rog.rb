p "first name?"
 first_name = gets.chomp
 p "last name"
 last_name = gets.chomp

 mensaje = "Nombre Correcto"
no = "incorrecto"


if first_name == "Rogelio" && last_name == "Manzano"
puts mensaje
else 
  puts no
end
