class GameController < ApplicationController
  def index
  	@content = initialize_game
  end

  def initialize_game
  	@n1 = Ship.new("B", 3)
  	@n2 = Ship.new("D", 6)
  	@n3 = Ship.new("G", 8)
  	@n4 = Ship.new("E", 1)
  	@contador = 0
  	{ contador: @contador, navios: [@n1, @n2, @n3, @n4] }
  end
end
