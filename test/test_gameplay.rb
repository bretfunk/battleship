require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/gameplay'

class GameplayTest < Minitest::Test
  def test_class_exists
    test = Gameplay.new
    result = test.nil?
    assert_equal false, result
  end


end
