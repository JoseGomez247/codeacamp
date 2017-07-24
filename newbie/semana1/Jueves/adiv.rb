class NumberGuessingGame
  def initialize(rand)
    @game =  rand#creo la instancia de clase para usarla en el metodo
    continue?
  end


  def continue?#este metodo sirve para que el usuario decida
    #terminar el juego o continuar
    p  "Play or not"#la instruccion para terminar o continuar
    p gss = gets.chomp#resive la respuesta del usuario
    if  gss == "play"#si el usuario introduce si, se inicia otro juego
      guess#llamo al mètodo guess para que inicie el juego denuevo
    else
      p "Thanks for playing"#de lo contrario, setermina el juego
    end
  end

  def guess#este es el mètodo que sirve para adivinar el nùmero
    p "inserta numero:"#primera instruccion
    num = gets.chomp#meto a gets.chomp en una variable y lo llamo
    if num.to_i < @game#si el numero es menor te da esa pista
     p "Too low"
     guess#llamo al metodo para que se repita
   elsif num.to_i == @game#si elnumero ingresado es igual al numero secreto te dice que lo encontraste
     p "You got it!"
     continue?#aqui al ser el resultado correcto llamo al metodo para que el usuario
     #decida empezar otro juego o terminar
   else# y si el numero ingresado es mas grande que el numero secreto, te da esta pista
     p "Too High"
     guess#llamo al metodo para que se repita
    end
  end


end

game= NumberGuessingGame.new(rand(0..9))#creo la instancia de clase con el valor rand para que me de un numero del 0 al 9 al azar
