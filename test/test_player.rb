require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'


class PlayerTest < Minitest::Test

  def test_class_exist
    test = Player.new
    result = test.nil?
    assert_equal false, result
  end



end
