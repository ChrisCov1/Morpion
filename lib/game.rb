#require_relative 'show'

class Game #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  attr_accessor :current_player, :status, :board, :player_array, 

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
   @player_array = [Player.new(player1_name, "X"), Player.new(player2_name, "O")]
   @board = Board.new
   @current_player = @player_array[0]

  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    Show.new.show_board(board)

    i = 0
    while i <= 8 && board.victory(current_player) == false
      current_player = i.even? ? player_array[0] : player_array[1]
      board.play_turn(current_player)
      Show.new.show_board(board)
      i += 1
    end
    if i == 9
      puts "C'est un match nul !" 
    end
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    puts "Souhaitez vous rejouer ? (taper Y pour oui taper N pour non)"
  
    if gets.chomp == "Y"
      @board = Board.new
      turn
      else
      puts "Au revoir !"
    end
  end

  def game_end
  # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul 
  end    
end