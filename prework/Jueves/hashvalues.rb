def hash_values(hash)
  arr= []
  hash.each_value do |value|#separo el hash en "values"
     arr << value#imprimo  el valor dentro de un array
  end
  arr
end

p hash_values({"Vegetal" => ['zanahoria', 'elote' ], "Fruta" => ['manzana', 'arandano']}) == [["zanahoria", "elote"], ["manzana", "arandano"]]