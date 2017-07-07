p edad= 23
case edad 
  when 0..6
    puts "infancia"
  when 6..12
    puts "Niñez"
  when 12..20
    puts "Adolescencia"
  when 20..25
    puts "Juventud"
  when 25..60
    puts "Adultez"
  else
    puts "Ancianidad"
  end
  p x = [1,2,3,4,5]
  x.each do |x|
    x += 5
    puts "#{x}"
  end


