require 'bundler'
Bundler.require

#require_relative 'lib/boardcase'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué

  attr_accessor :board_hash
  

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @board_hash = {:A1 => BoardCase.new("A1"), :B1 => BoardCase.new("B1"), :C1 => BoardCase.new("C1"), :A2 => BoardCase.new("A2"), :B2 => BoardCase.new("B2"), :C2 => BoardCase.new("C2"), :A3 => BoardCase.new("A3"), :B3 => BoardCase.new("B3"), :C3 => BoardCase.new("C3")}
 
  end

  def play_turn (player_to_save)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    puts "#{player_to_save.name} à toi de jouer ! Que souhaites-tu faire ? (entre A1, B1,...)"
    choix = gets.chomp
    while choix != "A1" && choix != "A2" && choix != "A3" && choix != "B1" && choix != "B2" && choix != "B3" && choix != "C1" && choix != "C2" && choix != "C3" || board_hash[choix.to_sym].value.eql?(" ") == false
      puts "Essaie encore !"
    end
    choix = choix.to_symbol
    board_hash[choix].value = player_to_save.value
  end

  def victory
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    victory = [ 
      [0, 1, 2], [3, 4, 5], [6, 7, 8],  # <-- Horizontal
      [0, 3, 6], [1, 4, 7], [2, 5, 8],  # <-- Vertical 
      [0, 4, 8], [2, 4, 6],             # <-- Diagonal  
    ]
    if victory.any? { |victory| victory.all? {|a_case| @cases[a_case].value == 'X'}}
      return player1
    end
    if victory.any? { |victory| victory.all? {|a_case| @cases[a_case].value == 'O'}}
      return player2
    end
  end

  # Return true if game is TIE
  def tie?
    if @cases.all? { |spot| spot == 'X' || spot == 'O' }

      @Board.victory == "tie"
      return true
      puts "Match nul".yellow
    end
  end
end




  