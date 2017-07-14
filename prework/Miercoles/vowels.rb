def replace_vowels(arr)
  m= []
  arr.each do |x|
    m << x.gsub("a", "x").gsub("e", "x").gsub("i", "x").gsub("o", "x").gsub("u", "x")
  end
  p m
end

p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]