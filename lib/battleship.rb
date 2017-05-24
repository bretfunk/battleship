require './lib/gameplay'
class Battleship
  attr_accessor :gameplay
  def initialize
    @gameplay = Gameplay.new
  end

end
