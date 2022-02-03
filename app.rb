require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/boardcase'
require_relative 'show'
 
class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    player1 = Player.new("player1.name", player_symbol)
    player2 = Player.new("player2.name", player_symbol)
    
    puts "Jouons ensemble au MORPION"
    while cases.value >= 0 && cases.value <= 8
      puts "on continue de jouer"
      break
    end
  end
end
#binding.pry