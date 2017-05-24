require './lib/player'
require './lib/computer'
require './lib/gameplay'
require './lib/interface'

class Battleship
  include Gameplay
  include Interface
  attr_accessor :player, :computer
  def initialize
    @player = Player.new
    @computer = Computer.new
    @computer.opponent_board = @player.player_board
    @player.opponent_board = @computer.computer_board
  end
end

test = Battleship.new
test.computer_new_ship(3)
test.computer_new_ship(3)
test.computer_new_ship(3)
test.computer_new_ship(2)
test.computer_new_ship(2)
puts test.player_shoot("A1")
puts test.player_shoot("B1")
puts test.player_shoot("C1")
puts test.player_shoot("D1")
puts test.player_shoot("A2")
puts test.player_shoot("B2")
puts test.player_shoot("C2")
puts test.player_shoot("D2")
puts test.player_shoot("A3")
puts test.player_shoot("B3")
puts test.player_shoot("C3")
puts test.player_shoot("D3")
puts test.player_shoot("A4")
puts test.player_shoot("B4")
puts test.player_shoot("C4")
puts test.player_shoot("D4")
test.player_output
p test.player_shots
p test.player_hits
p test.computer_shots
p test.computer_hits

 #computers opponet board
#test.player.opponent_board.output #players opponet board
#player base class with a sub (inherated) class
