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

  def test_random_coordinate
    test = Computer.new
    result = test.random_coordinate
    new_result = test.random_coordinate
    refute_equal result, new_result
  end

  def test_new_random_coordinate
    test = Computer.new
    result = test.random_coordinate
    new_result = test.random_coordinate
    refute_equal result, new_result
  end

  def test_location_avaiable
    test = Computer.new
    result = test.available?("A1")
    assert_equal true, result
  end

  def test_location_avaiable_miss
    test = Computer.new
    test.game_board["A"]["1"] = "M"
    result = test.available?("A1")
    assert_equal false, result
  end

  def test_location_avaiable_hit
    test = Computer.new
    test.game_board["A"]["1"] = "H"
    result = test.available?("A1")
    assert_equal false, result
  end

  def test_location_hit
    test = Computer.new
    test.game_board["B"]["2"] = "S"
    result = test.ship_hit?("B2")
    assert_equal true, result
  end

  def test_location_not_hit
    test = Computer.new
    test.game_board["B"]["2"] = " "
    result = test.ship_hit?("B2")
    assert_equal false, result
  end

end
