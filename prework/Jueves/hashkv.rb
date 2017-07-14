def hash_key_value(hash)
  arr= []
  hash.each do |key, value|#separo el hash en "keys" y "values"
      arr << "La llave del hash es #{key} y su valor es #{value}"
  end
  arr
end

 p hash_key_value({"Libro" => '50', "Libreta" => '25'}) == ["La llave del hash es Libro y su valor es 50", "La llave del hash es Libreta y su valor es 25"]