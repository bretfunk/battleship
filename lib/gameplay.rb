require './lib/player'
require './lib/computer'
#Sal: board=player.player_board.ship_board

class Gameplay
  attr_accessor :player, :computer
  def initialize
    @player = Player.new
    @computer = Computer.new
    @computer.opponent_board = @player.player_board
    @player.opponent_board = @computer.computer_board
  end



  def computer_new_ship(size)
    computer.computer_ship_creator(size)
  end

  def computer_hit_or_miss_inserter
    computer.hit_miss_inserter
  end

  def player_output
    player.player_board.output
  end

  def player_ship_output
    player.player_board.ship_output
  end

  def player_shoot(coordinate)
    player.player_shoot(coordinate)
  end

  def player_ship_requests(size, request)
    player.player_ship_request(size, request)
  end

  def computer_ship_output
    computer.computer_board.ship_output
  end

  def computer_output
    computer.computer_board.output
  end

  def player_shots
    player.player_shots
  end

  def player_hits
    player.hit_counter
  end

  def computer_shots
    computer.computer_shots
  end

  def computer_hits
    computer.hit_counter
  end



end

test = Gameplay.new
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
