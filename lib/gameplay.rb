require './lib/computer'
require './lib/player'
require './lib/board' #prob not needed

class Gameplay
  attr_accessor :player, :computer
  def initialize
    @player = Player.new
    @computer = Computer.new
  end

  def player
    @player
  end

  def computer
    @computer
  end

  def computer_new_ship(size)
    computer.computer_ship_creator(size)
  end

  def computer_output
    computer.computer_board.ship_output
  end

  def computer_hit_or_miss_inserter
    computer.hit_miss_inserter
  end

  def player_output
    player.player_board.output
  end


end

test = Gameplay.new
test.computer_new_ship(2)
test.computer_new_ship(3)
test.computer_output
test.computer_hit_or_miss_inserter
