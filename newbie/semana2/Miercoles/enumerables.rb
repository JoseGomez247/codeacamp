def print_odd_indexed_integers(array)
  array.each_with_index { |item, index| puts item if index %2 != 0}
end

def odd_integers(array)
  array.select {|value| value.odd?}
end

def first_under(array, limit)
  array.find { |value| value < limit }
end

def add_bang(array)
 array.map {|word| "#{word}!"}
end

def sum(array)
  array.inject(:+)
end

def sorted_triples(array)
  w= []
arr= array.each_slice(3)
arr.each do |word|
  w << word.sort
end
w
end






print_odd_indexed_integers([2, 4, 6, 8, 10, 12])
# => 4
# => 8
# => 12

puts odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]

puts first_under([13, 21, 7, 0, 11, 106], 10) == 7

puts add_bang(["hi", "mom"]) == ["hi!", "mom!"]

puts sum([1, 1, 2, 3, 5]) == 12

words = %w(De esta simple manera se puede reorganizar una oración)
p sorted_triples(words) == [["De", "esta", "simple"], ["manera", "puede", "se"], ["oración", "reorganizar", "una"]]
