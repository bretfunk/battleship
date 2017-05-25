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

  def test_game_board_exists
    test = Board.new
    result = test.game_board.nil?
    assert_equal false, result
  end

  def test_game_board_coordinate
    test = Board.new
    result = test.game_board["A"]["1"]
    assert_equal " ", result
  end

  def test_new_game_board_coordinate
    test = Board.new
    result = test.game_board["B"]["2"]
    assert_equal " ", result
  end

  def test_ship_board_exists
    test = Board.new
    result = test.ship_board.nil?
    assert_equal false, result
  end

  def test_ship_board_coordinate
    test = Board.new
    result = test.ship_board["A"]["1"]
    assert_equal " ", result
  end

  def test_new_ship_board_coordinate
    test = Board.new
    result = test.ship_board["B"]["2"]
    assert_equal " ", result
  end
end
