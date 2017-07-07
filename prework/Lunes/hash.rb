def join_hash(hash1, hash2, hash3)
  s = {}#contenedor hash
    hash1.each do |y|
      hash2.each do |x|
        hash3.each do |z|#separo uno a uno mis tres hashes
         r=Hash[*y + x + z]#aqui los junto pero se pasan a array, por eso los paso a hash de nuevo
        s = r#meto mis valores en el contenedor
      end
     end
    end 
     s#llamo a mis variables
end




fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}


#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 

