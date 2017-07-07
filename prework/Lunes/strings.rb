p s= "hOlA" 
p s.upcase
p s.downcase
p s.length
p s.start_with? "hOl"
p s.end_with? "O"
p s[2]
s[3]= "o"
p s
p s.capitalize
p s.chr
p s.count "lo"
p "".empty?
p s.sub(/[aeiou]/, '*')
p s.gsub(/[aeiouAEIOU]/, '*')
p s.include? "hO"
p s.index('l')
p s.reverse
p s.split
p " hOlA ".strip


