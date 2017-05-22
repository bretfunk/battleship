require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'

class ComputerTest < Minitest::Test

  def test_class_exist
    test = Computer.new
    result = test.nil?
    assert_equal false, result
  end

  def test_game_board
    test = Computer.new
    result = test.game_board.nil?
    assert_equal false, result
  end

  def test_game_board_location
    test = Computer.new
    result = test.game_board["A"]["1"]
    assert_equal " ", result
  end

  def test_another_game_board_location
    test = Computer.new
    result = test.game_board["B"]["2"]
    assert_equal " ", result
  end

  def test_yet_another_game_board_location
    test = Computer.new
    result = test.game_board["C"]["3"]
    assert_equal " ", result
  end




end
