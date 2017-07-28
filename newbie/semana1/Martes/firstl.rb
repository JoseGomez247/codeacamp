def first_letters(word)
  r= []
  word.split.each { |w| r << w.chars.first}
  r
end

p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]
