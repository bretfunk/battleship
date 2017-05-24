class Battleship 
  attr_accessor :gameplay
  def initialize
    @gameplay = Gameplay.new
  end

end

#call interface and have that thing run
test = Battleship.new
# test.computer_new_ship(2)
# test.computer_new_ship(3)
#test.computer_output
