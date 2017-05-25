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

  def test_board_instance
    test = Battleship.new
    result = test.board.nil?
    assert_equal false, result
  end

  def test_computer_instance
    test = Battleship.new
    result = test.computer.nil?
    assert_equal false, result
  end

  def test_player_instance
    test = Battleship.new
    result = test.player.nil?
    assert_equal false, result
  end

  def test_computer_opponet_board
    skip
    test = Battleship.new
    result = test.computer_opponent_board.nil?
    assert_equal false, result
  end


end
