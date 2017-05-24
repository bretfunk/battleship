require './lib/battleship'
require './lib/interface'
require './lib/gameplay'

include Interface
include Gameplay

new_game = Battleship.new
puts message_welcome
puts ">"
welcome_answer = gets.chomp
new_game.message_welcome_choice(welcome_answer)
puts ">"


#new_game.computer_new_ship(3)
#new_game.computer_new_ship(2)

#puts new_game.player_shoot("A1")


#needs to load every time
# new_game.player_output
