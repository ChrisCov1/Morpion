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
    puts " Bienvenue joueur 1, quel est votre nom "
    @name = gets.chomp
    puts "Bonjour #{@name}"
    player1 = Player.new(@name, "X")

    puts " Bienvenue joueur 2, quel est votre nom "
    @name2 = gets.chomp
    puts "Bonjour #{@name2}"
    player2 = Player.new(@name2, "O")
    binding.pry

    puts "Jouons ensemble au MORPION"
    while cases.value >= 0 && cases.value <= 8
      puts "on continue de jouer"
      break
    end
  end
end
Application.new.perform
