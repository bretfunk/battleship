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

  def test_computer_shoot
    test = Computer.new
    location = test.computer_shoot
    result = test.available?(location)
    assert_equal true, result
  end

  def test_close_numbers #work on this, ship size 2
    test = Computer.new
    result = test.close_numbers?(3, ["A2", "A3", "A4"])
    assert_equal true, result
  end

  def test_not_close_numbers
    test = Computer.new
    result = test.close_numbers?(3, ["B8", "B2", "B6"])
    refute_equal true, result
  end

  def test_close_letters
    test = Computer.new
    result = test.close_letters?(3, ["C1", "A1", "B1"])
    assert_equal true, result
  end

  def test_not_close_letters
    test = Computer.new
    result = test.close_letters?(3, ["C3", "F3", "B3"])
    refute_equal true, result
  end

  def test_same_num
    test = Computer.new
    result = test.same_num?(["F1", "G1", "D1"])
    assert_equal true, result
  end

  def test_not_same_num
    test = Computer.new
    result = test.same_num?(["F1", "G2", "D3"])
    refute_equal true, result
  end

  def test_same_letter
    test = Computer.new
    result = test.same_letter?(["F1", "F9", "F6"])
    assert_equal true, result
  end

  def test_not_same_letter
    test = Computer.new
    result = test.same_letter?(["F1", "D9", "F6"])
    refute_equal true, result
  end
end
