require './lib/board'
require './lib/computer'
require './lib/gameplay'
require './lib/interface'
require './lib/player'

class Battleship #I don't know that I need all of this
  def initialize
    @board = Board.new
    @computer = Computer.new
    @gameplay = Gameplay.new
    @interface = Interface.new
    @player = Player.new
  end

  def board
    @board
  end

  def computer
    @computer
  end

  def gameplay
    @gameplay
  end

  def interface
    @interface
  end

  def player
    @player
  end
end

#call interface and have that thing run
