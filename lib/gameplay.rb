
#Sal: board=player.player_board.ship_board

class Gameplay
  attr_accessor :player, :computer
  def initialize
    @player = Player.new
    @computer = Computer.new
  end


  # def computer_new_ship(size)
  #   computer.computer_ship_creator(size)
  # end
  #
  # def computer_output
  #   computer.computer_board.ship_output
  # end
  #
  # def computer_hit_or_miss_inserter
  #   computer.hit_miss_inserter
  # end
  #
  # def player_output
  #   player.player_board.output
  # end
end
