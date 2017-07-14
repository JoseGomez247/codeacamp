def hash_keys(hash)
  arr= []
  hash.each_key do |key|#separo el hash en "keys"
     arr << key#imprimo  el key dentro de un array
  end
  arr
end

p hash_keys({"Vegetal" => ['zanahoria', 'elote' ], "Fruta" => ['manzana', 'arandano']}) == ["Vegetal", "Fruta"]