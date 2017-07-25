

def deaf_grandma
  puts "¿Hola nieto, como estas?"
  text= " "
  cont = 0
  loop do
    text= gets.chomp
    if text == "BYE TQM"
      puts "Ok nieto esta bien"
      cont += 1

    elsif text == text.upcase
          puts "NO, NO DESDE 1983"
    else
       puts "HUH?! NO TE ESCUHO, HIJO!"
    end
    break if cont == 3
  end
end

p deaf_grandma
