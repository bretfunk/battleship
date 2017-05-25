require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'
require './lib/gameplay'

class GameplayTest < Minitest::Test
  include Gameplay

  def test_computer_new_ship
    test = Battleship.new
    result = test.computer_new_ship(2)
    assert_equal 2, result.length
  end

end
