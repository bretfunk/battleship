require './lib/player'
require './lib/computer'
require './lib/gameplay'
require './lib/interface'
require './lib/runner'
# require 'simplecov'
# SimpleCov.start

class Battleship
  include Gameplay
  include Interface
  attr_accessor :player, :computer, :time
  def initialize
    @player = Player.new
    @computer = Computer.new
    @computer.opponent_board = @player.player_board
    @player.opponent_board = @computer.computer_board
    @time = Time.new
  end
end
