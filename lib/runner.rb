require './lib/battleship'
require './lib/interface'
require './lib/gameplay'

new_game = Battleship.new
new_game.computer_new_ship(3)
new_game.computer_new_ship(3)
new_game.computer_new_ship(3)
new_game.computer_new_ship(2)
new_game.computer_new_ship(2)
puts new_game.player_shoot("A1")
puts new_game.player_shoot("B1")
puts new_game.player_shoot("C1")
puts new_game.player_shoot("D1")
puts new_game.player_shoot("A2")
puts new_game.player_shoot("B2")
puts new_game.player_shoot("C2")
puts new_game.player_shoot("D2")
puts new_game.player_shoot("A3")
puts new_game.player_shoot("B3")
puts new_game.player_shoot("C3")
puts new_game.player_shoot("D3")
puts new_game.player_shoot("A4")
puts new_game.player_shoot("B4")
puts new_game.player_shoot("C4")
puts new_game.player_shoot("D4")
new_game.player_output
p new_game.player_shots
p new_game.player_hits
p new_game.computer_shots
p new_game.computer_hits
