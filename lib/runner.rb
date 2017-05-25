require './lib/battleship'
require './lib/interface'
require './lib/gameplay'

include Interface
include Gameplay

new_game = Battleship.new

#beginning sequence
puts
message_welcome
welcome_answer = gets.downcase.chomp
new_game.message_welcome_choice(welcome_answer)
puts ">"

#computer add ships
new_game.computer_new_ship(3)
new_game.computer_new_ship(2)
message_computer_ship_placement

#player adds ships
two_ship_flag = false
until two_ship_flag == true
  player_two_ship = gets.chomp.split(" ")
  if new_game.ship_creator_filter(2, player_two_ship) == false
    puts "Not valid coordinates.  Please enter new coordinates:"
  else
    two_ship_flag = true
    new_game.player_ship_request(2, player_two_ship)
  end
end

message_player_three_ship_placement
three_ship_flag = false
until three_ship_flag == true
  player_three_ship = gets.chomp.split(" ")
  if new_game.ship_creator_filter(3, player_three_ship) == false
    puts "Not valid coordinates.  Please enter new coordinates:"
  else
    three_ship_flag = true
    new_game.player_ship_request(3, player_three_ship)
  end
end

#player's turn, needs a method to loop
until new_game.player_hits == 5 || new_game.computer_hits == 5
  puts "= COMPUTER SHIPS ="
  new_game.computer_output
  message_player_shoot
  fire_answer = gets.chomp
  new_game.player_shoot(fire_answer)
  puts "= COMPUTER SHIPS ="
  new_game.computer_output
  message_end_player_turn
  gets.chomp
#computer's turn
  new_game.computer_hit_or_miss_inserter
  puts "= PLAYER SHIPS ="
  new_game.player_output
  puts "Press ENTER for your turn."
  gets.chomp
end

#end sequence
if new_game.player_hits == 5 #player won

elsif new_game.computer_hits == 5 #computer won

end

#no ending sequence
