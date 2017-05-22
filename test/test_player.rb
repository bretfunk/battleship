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

  def test_game_board_exists
    test = Player.new
    result = test.game_board.nil?
    assert_equal false, result
  end

  def test_available
    test = Player.new
    result = test.available?("A1")
    assert_equal true, result
  end

  def test_ship_hit_without_ship
    test = Player.new
    result = test.ship_hit?("A1")
    assert_equal false, result
  end

  def test_ship_hit_with_ship
    test = Player.new
    test.game_board["A"]["1"] = "S"
    result = test.ship_hit?("A1")
    assert_equal true, result
  end

  def test_player_shoot_with_hit #might have to change puts for return
    test = Player.new
    test.game_board["A"]["1"] = "S"
    result = test.player_shoot("A1")
    assert_equal "Hit!", result #not working
  end

  def test_player_shoot_with_miss
    test = Player.new
    test.game_board["A"]["1"] = " "
    result = test.player_shoot("A1")
    assert_equal "Miss!", result
  end

  def test_player_shoot_with_invalid_location
    test = Player.new
    test.game_board["A"]["1"] = "M"
    result = test.player_shoot("A1")
    assert_equal "Not a valid location", result
  end

end
