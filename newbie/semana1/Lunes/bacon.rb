
def baconian_cipher(msg)
  string = ""#esta variable es para que me meta el resultadoi en un string y lo pueda llamar al final
diccionario={"a"=>"AAAAA","b"=>"AAAAB","c"=>"AAABA","d"=>"AAABB","e"=>"AABAA",
            "f"=>"AABAB","g"=>"AABBA","h"=>"AABBB","i"=>"ABAAA","k"=>"ABAAB",
            "l"=>"ABABA","m"=>"ABABB","n"=>"ABBAA","o"=>"ABBAB","p"=>"ABBBA",
            "q"=>"ABBBB","r"=>"BAAAA","s"=>"BAAAB","t"=>"BAABA","v"=>"BAABB",
            "w"=>"BABAA","x"=>"BABAB","y"=>"BABBA","z"=>"BABBB"}#es l abase de mi mètodo, son los datos que voy a usar para comparar
           palabras= msg.scan(/...../)#separo el mensaje  cada 5 letras
           palabras.each do |letters|#tomo los valores del array resultante antes de los del hash para que compares
           #los del mensaje con los del hash y no los del hash con los del mensaje
          diccionario.each do |keys, values| #luego separo los valores de mi hash
           if values == letters#la condiciòn para que me compare el mensaje con los values del hash
             string << keys#hago que me devuelva el key de las letras que coinciden con los values y los meto en el string
          end
         end
          end
          string#llamo al string para que me lo regrese como resultado
          end



            p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"
p baconian_cipher("AAAAAABAAABAABBAAABBAABAAABABBAABAAABBBABAAAAABBABAABABAAABAAABAABAAABAAAAABAAAA")
