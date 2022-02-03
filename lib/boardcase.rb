require 'bundler'
Bundler.require

#require_relative 'lib/player

class BordCase #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case

  attr_accessor :cases, :value

  def initialize(cases, value) #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @cases = cases
    @value = " "
    
  end
end
