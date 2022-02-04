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
    #binding.pry

    puts "Jouons ensemble au MORPION"
    game_start = true 
    timer = 1
    timer_max = 9
    while game_start
      puts "on continue de jouer"
      puts "tour de jeu numero #{timer}"
      timer +=1
      if timer == timer_max
        game_start = false
      end
    end
      puts "fin du jeu"
  end
end
Application.new.perform
