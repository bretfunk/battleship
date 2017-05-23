require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test

  def test_class_exists
    test = Board.new
    result = test.nil?
    assert_equal false, result
  end

  def game_board_exists
    test = Board.new
    result = test.game_board.nil?
    assert_equal false, result
  end


end
