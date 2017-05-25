require './lib/battleship'
require './lib/interface'
require './lib/gameplay'

include Interface
include Gameplay

new_game = Battleship.new
puts
puts message_welcome
#puts ">"
welcome_answer = gets.chomp
new_game.message_welcome_choice(welcome_answer)
puts ">"
pause = gets
#need to create exit for exit command
#need to create loop for instructions
#computer add ships
new_game.computer_new_ship(3)
new_game.computer_new_ship(2)
puts message_computer_ship_placement

#player adds ships, needs a method to loop
player_two_ship = gets.chomp.split(" ")
puts new_game.player_ship_requests(2, player_two_ship)
puts message_player_three_ship_placement
player_three_ship = gets.chomp.split(" ")
puts new_game.player_ship_requests(3, player_three_ship)

#player's turn, needs a method to loop
new_game.player.player_board.output
message_player_shoot
fire_answer = gets.chomp
new_game.player_shoot(fire_answer)
new_game.player_output
message_end_player_turn

#computer's turn
new_game.computer_hit_or_miss_inserter
new_game.computer_output
