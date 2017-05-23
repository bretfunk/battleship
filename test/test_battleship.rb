require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/battleship'

class BattleshipTest < Minitest::Test
  def test_class_exists
    test = Battleship.new
    result = test.nil?
    assert_equal false, result
  end


end
